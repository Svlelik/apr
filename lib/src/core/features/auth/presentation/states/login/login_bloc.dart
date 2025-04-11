import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required AuthManager<AuthenticatedUser> authManager,
    required CheckBlockUseCase checkBlockUseCase,
    required UnBlockUseCase unBlockUseCase,
  })  : _authManager = authManager,
        _checkBlockUseCase = checkBlockUseCase,
        _unBlockUseCase = unBlockUseCase,
        super(const _Initial()) {
    on<_Started>(_started);
    on<_Cleared>(_cleared);
    on<_SignIn>(_signIn);
    on<_UnBlock>(_unBlock);
  }

  final AuthManager<AuthenticatedUser> _authManager;

  final CheckBlockUseCase _checkBlockUseCase;
  final UnBlockUseCase _unBlockUseCase;

  LoginForm? form;

  Future<void> _started(_Started event, Emitter<LoginState> emit) async {
    form = LoginForm();

    await form?.init();

    emit(const LoginState.initial(isFormReady: true));

    final Duration blockTime = await _checkBlockUseCase(NoParams());

    if (blockTime.inSeconds >= 0) {
      emit(LoginState.block(blockTime));
    }
  }

  Future<void> _cleared(_Cleared event, Emitter<LoginState> emit) async {}

  Future<void> _unBlock(_UnBlock event, Emitter<LoginState> emit) async {
    await _unBlockUseCase(NoParams());
  }

  Future<void> _signIn(_SignIn event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());

    final phone = form?.phoneControl.value;

    final result = await _authManager.requestOTP(phone ?? '');

    result.fold(
      (failure) {
        form?.form.setErrors({LoginForm.phone: failure.message});

        emit(LoginState.failure(failure));
      },

      // emit(LoginState.failure(failure)),
      (success) {
        emit(const LoginState.success());
      },
    );
  }
}
