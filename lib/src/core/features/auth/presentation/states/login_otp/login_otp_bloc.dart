import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

part 'login_otp_bloc.freezed.dart';
part 'login_otp_event.dart';
part 'login_otp_state.dart';

class LoginOtpBloc extends Bloc<LoginOtpEvent, LoginOtpState> {
  LoginOtpBloc({
    required LoginOtpUseCase loginOtpUseCase,
    required AuthManager<AuthenticatedUser> authManager,
  })  : _authManager = authManager,
        _loginOtpUseCase = loginOtpUseCase,
        super(const _Initial()) {
    on<_Started>(_started);
    on<_Cleared>(_cleared);
    on<_SignIn>(_signIn);
    on<_Repeat>(_repeat);
    on<_RequestOTP>(_requestOTP);
  }

  final AuthManager<AuthenticatedUser> _authManager;

  final LoginOtpUseCase _loginOtpUseCase;

  final FormControl<String> formControl = FormControl<String>();
  final UiOtpFieldController controller = UiOtpFieldController();

  Future<void> _started(_Started event, Emitter<LoginOtpState> emit) async {
    final hasPinCode = await _authManager.hasPinCode;

    if (hasPinCode && _authManager.user.value.phone != null) {
      /// Правки на бэке чтобы возвращался таймер
      final result =
          await _authManager.requestOTP(_authManager.user.value.clearPhone);

      result.fold((l) {
        _authManager.signOut();
      }, (r) {
        emit(
          state.copyWith(
            status: StateStatus.fetchingSuccess,
            phone: _authManager.user.value.phone,
            timer: _authManager.otpTimer,
          ),
        );
      });
    } else {
      emit(
        state.copyWith(
          status: StateStatus.fetchingSuccess,
          phone: _authManager.user.value.phone,
          timer: _authManager.otpTimer,
        ),
      );
    }
  }

  Future<void> _cleared(_Cleared event, Emitter<LoginOtpState> emit) async {}

  Future<void> _signIn(_SignIn event, Emitter<LoginOtpState> emit) async {
    if (event.code.isEmpty) {
      return;
    }

    emit(
      state.copyWith(status: StateStatus.fetchingInProgress),
    );

    final result = await _loginOtpUseCase
        .call(LoginOtpUseCaseParam(code: int.parse(event.code)));

    result.fold(
      (failure) {
        formControl
          ..reset()
          ..setErrors({failure.message: true});

        Future<void>.delayed(
          const Duration(seconds: 1),
          controller.clear,
        );

        emit(
          state.copyWith(
            status: StateStatus.fetchingFailure,
            error: failure,
          ),
        );
      },
      (success) {
        emit(
          state.copyWith(status: StateStatus.finish),
        );
      },
    );
  }

  Future<void> _repeat(_Repeat event, Emitter<LoginOtpState> emit) async {}

  Future<void> _requestOTP(
    _RequestOTP event,
    Emitter<LoginOtpState> emit,
  ) async {
    final result = await _authManager.requestOTP(state.phone!);

    result.fold(
      (failure) => emit(state.copyWith(error: failure)),
      (response) {
        emit(state.copyWith(timer: null));
        emit(state.copyWith(timer: response));
      },
    );
  }
}
