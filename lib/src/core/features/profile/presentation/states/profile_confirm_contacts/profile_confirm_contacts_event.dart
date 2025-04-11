part of 'profile_confirm_contacts_bloc.dart';

@freezed
class ProfileConfirmContactsEvent with _$ProfileConfirmContactsEvent {
  const factory ProfileConfirmContactsEvent.started(
      String? email, String? phone) = _Started;

  const factory ProfileConfirmContactsEvent.checkCode(
      String? email, String? phone, String code) = _CheckCode;

  const factory ProfileConfirmContactsEvent.updateContacts(
      String? email, String? phone) = _UpdateContacts;
}
