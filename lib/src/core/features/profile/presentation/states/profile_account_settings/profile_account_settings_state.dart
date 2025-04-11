part of 'profile_account_settings_bloc.dart';

@freezed
class ProfileAccountSettingsState with _$ProfileAccountSettingsState {
  const factory ProfileAccountSettingsState({
    required ProfileAccountUpdatePasswordForm form,
    @Default(StateStatus.pure) StateStatus status,
    String? error,
  }) = _Initial;
}
