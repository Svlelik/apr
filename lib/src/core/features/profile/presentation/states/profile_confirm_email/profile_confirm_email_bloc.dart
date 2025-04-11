import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

part 'profile_confirm_email_bloc.freezed.dart';
part 'profile_confirm_email_event.dart';
part 'profile_confirm_email_state.dart';

class ProfileConfirmEmailBloc
    extends Bloc<ProfileConfirmEmailEvent, ProfileConfirmEmailState> {
  ProfileConfirmEmailBloc({
    required ProfileRepository repository,
  })  : _repository = repository,
        super(const _Initial()) {
    on<_Started>(_init);
    on<_CheckCode>(_checkCode);
    on<_UpdateEmail>(_updateEmail);
  }

  final ProfileRepository _repository;

  final FormControl<String> formControl = FormControl<String>();
  final UiOtpFieldController controller = UiOtpFieldController();

  Future<void> _init(
    _Started event,
    Emitter<ProfileConfirmEmailState> emit,
  ) async {
    await _sendCode(event.email, emit);
  }

  Future<void> _sendCode(
    String email,
    Emitter<ProfileConfirmEmailState> emit,
  ) async {
    final result = await _repository.sendVerifyCode(email: email);

    result.fold(
      (error) {
        emit(state.copyWith(error: error.message));
      },
      (r) {
        emit(state.copyWith(timer: r));
      },
    );
  }

  Future<void> _checkCode(
    _CheckCode event,
    Emitter<ProfileConfirmEmailState> emit,
  ) async {
    final result = await _repository.checkCodeVerified(
      int.parse(event.code),
      email: event.email,
    );

    result.fold(
      (error) {
        emit(state.copyWith(error: error.message));
      },
      (r) {
        add(_UpdateEmail(event.email));
      },
    );
  }

  Future<void> _updateEmail(
    _UpdateEmail event,
    Emitter<ProfileConfirmEmailState> emit,
  ) async {
    // TODO method updateEmail removed from API
    // final result = await _repository.updateEmail(event.email);
    //
    // result.fold(
    //   (error) {
    //     emit(state.copyWith(error: error.message));
    //   },
    //   (r) {
    //     emit(state.copyWith(status: StateStatus.finish));
    //   },
    // );
  }
}
