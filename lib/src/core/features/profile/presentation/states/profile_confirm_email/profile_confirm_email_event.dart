part of 'profile_confirm_email_bloc.dart';

@freezed
class ProfileConfirmEmailEvent with _$ProfileConfirmEmailEvent {
  const factory ProfileConfirmEmailEvent.started(String email) = _Started;

  const factory ProfileConfirmEmailEvent.checkCode(String email, String code) =
      _CheckCode;

  const factory ProfileConfirmEmailEvent.updateEmail(String email) =
      _UpdateEmail;
}
