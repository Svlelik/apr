part of 'user_points_bloc.dart';

@freezed
class UserPointsState with _$UserPointsState {
  const factory UserPointsState.initial() = _Initial;

  const factory UserPointsState.fetching() = _Fetching;

  const factory UserPointsState.success({
    required BonusesDTO dto,
    required PointsConfig pointsConfig,
    @Default(false)
    bool isAvailable, //TODO: Change when service will be available
  }) = _Success;

  const factory UserPointsState.error({
    required String message,
  }) = _Error;
}
