import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

part 'profile_confirm_contacts_bloc.freezed.dart';
part 'profile_confirm_contacts_event.dart';
part 'profile_confirm_contacts_state.dart';

class ProfileConfirmContactsBloc
    extends Bloc<ProfileConfirmContactsEvent, ProfileConfirmContactsState> {
  ProfileConfirmContactsBloc({
    required ProfileRepository repository,
  })  : _repository = repository,
        super(const _Initial()) {
    on<_Started>(_init);
    on<_CheckCode>(_checkCode);
  }

  final ProfileRepository _repository;

  final FormControl<String> formControl = FormControl<String>();
  final UiOtpFieldController controller = UiOtpFieldController();

  Future<void> _init(
    _Started event,
    Emitter<ProfileConfirmContactsState> emit,
  ) async {
    await _sendCode(event.email, event.phone, emit);
  }

  Future<void> _sendCode(
    String? email,
    String? phone,
    Emitter<ProfileConfirmContactsState> emit,
  ) async {
    if (email != null) {
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
    if (phone != null) {
      final result = await _repository.sendVerifyCode(phone: phone);

      result.fold(
        (error) {
          emit(state.copyWith(error: error.message));
        },
        (r) {
          emit(state.copyWith(timer: r));
        },
      );
    }
  }

  Future<void> _checkCode(
    _CheckCode event,
    Emitter<ProfileConfirmContactsState> emit,
  ) async {
    final result = await _repository.checkCodeVerified(
      int.parse(event.code),
      email: event.email,
      phone: event.phone,
    );

    result.fold(
      (error) {
        emit(state.copyWith(error: error.message));
      },
      (r) {
        emit(state.copyWith(status: StateStatus.finish));
      },
    );
  }
}
