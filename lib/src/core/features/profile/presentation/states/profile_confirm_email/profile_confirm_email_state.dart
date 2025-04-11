part of 'profile_confirm_email_bloc.dart';

@freezed
class ProfileConfirmEmailState with _$ProfileConfirmEmailState {
  const factory ProfileConfirmEmailState({
    @Default(StateStatus.pure) StateStatus status,
    String? error,
    DateTime? timer,
  }) = _Initial;
}
