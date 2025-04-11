part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;

  const factory ProfileEvent.signOut() = _SignOut;

  const factory ProfileEvent.updateProfile() = _UpdateProfile;
  
  const factory ProfileEvent.onPressedDelete() = _OnPressedDelete;
}
