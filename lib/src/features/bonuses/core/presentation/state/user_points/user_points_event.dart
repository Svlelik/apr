part of 'user_points_bloc.dart';

@freezed
class UserPointsEvent with _$UserPointsEvent {
  const factory UserPointsEvent.fetch() = _Fetch;
}
