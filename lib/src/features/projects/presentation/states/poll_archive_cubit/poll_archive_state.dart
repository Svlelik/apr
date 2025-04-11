part of 'poll_archive_cubit.dart';

@freezed
class PollArchiveState with _$PollArchiveState implements LoaderState {
  const factory PollArchiveState({
    @Default(null) DateTimeRange? dateTimeRange,
    @Default(null) ProjectUtilityStatus? projectStatus,
    @Default(0) int requestCounter,
    @Default(true) bool isLoading,
    @Default([]) List<ProjectEntity> projects,
    @Default(6) int pageSize,
    @Default(1) int currentPage,
    @Default(1) int countPage,
    String? error,
    @Default(StateStatus.pure) StateStatus status,
  }) = _PollArchiveState;

  const PollArchiveState._();
}
