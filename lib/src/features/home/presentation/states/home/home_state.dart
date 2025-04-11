part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(StateStatus.pure) StateStatus status,
    Failure? error,
    @Default(AuthenticatedUser.empty) AuthenticatedUser user,
  }) = _Initial;
}
