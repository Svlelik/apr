part of 'projects_bloc.dart';

@freezed
class ProjectsState with _$ProjectsState {
  const factory ProjectsState.initial({
    @Default(StateStatus.pure) StateStatus status,
    String? error,
    @Default([]) List<ProjectEntity> projects,
    @Default(AuthenticatedUser.empty) AuthenticatedUser profile,
  }) = _Initial;
}
