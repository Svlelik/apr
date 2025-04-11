part of 'profile_confirm_contacts_bloc.dart';

@freezed
class ProfileConfirmContactsState with _$ProfileConfirmContactsState {
  const factory ProfileConfirmContactsState({
    @Default(StateStatus.pure) StateStatus status,
    String? error,
    DateTime? timer,
  }) = _Initial;
}
