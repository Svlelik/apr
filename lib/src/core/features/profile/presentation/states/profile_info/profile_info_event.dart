part of 'profile_info_bloc.dart';

@freezed
class ProfileInfoEvent with _$ProfileInfoEvent {
  const factory ProfileInfoEvent.started({
    @Default(AuthenticatedUser.empty) AuthenticatedUser profile,
  }) = _Started;

  const factory ProfileInfoEvent.signOut() = _SignOut;

  const factory ProfileInfoEvent.getDicts() = _GetDicts;

  const factory ProfileInfoEvent.updateProfile() = _UpdateProfile;

  const factory ProfileInfoEvent.editForm({
    @Default(false) bool isEdited,
  }) = _EditForm;
}
