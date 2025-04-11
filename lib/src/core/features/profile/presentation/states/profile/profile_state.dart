part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial({
    @Default(StateStatus.pure) StateStatus status,
    String? error,
    @Default(AuthenticatedUser.empty) AuthenticatedUser profile,
  }) = _Initial;

  const ProfileState._();
}
