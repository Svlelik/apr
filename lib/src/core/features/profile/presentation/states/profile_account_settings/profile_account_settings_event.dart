part of 'profile_account_settings_bloc.dart';

@freezed
class ProfileAccountSettingsEvent with _$ProfileAccountSettingsEvent {
  const factory ProfileAccountSettingsEvent.started() = _Started;

  const factory ProfileAccountSettingsEvent.updatePassword() =
      _UpdatePassword;

  const factory ProfileAccountSettingsEvent.deleteAccount() =
      _DeleteAccount;
}
