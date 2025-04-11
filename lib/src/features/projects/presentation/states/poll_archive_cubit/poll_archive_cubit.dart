import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'poll_archive_cubit.freezed.dart';
part 'poll_archive_state.dart';

class PollArchiveCubit extends Cubit<PollArchiveState> {
  PollArchiveCubit({
    required ProjectsRepository repository,
  })  : _repository = repository,
        super(const PollArchiveState()) {
    _init();
  }

  final ProjectsRepository _repository;

  static const kMinProjectId = 10000;

  Future<void> _init() async {
    await getOperations(1);
  }

  Future<void> setOperationType(ProjectUtilityStatus? type) async {
    final prevType = state.projectStatus;
    emit(state.copyWith(projectStatus: type, projects: const []));
    if (prevType != type) {
      await getOperations(1);
    }
  }

  Future<void> setDateTimeRange(DateTimeRange? dateTimeRange) async {
    final previousRange = state.dateTimeRange;
    emit(state.copyWith(dateTimeRange: dateTimeRange, projects: const []));
    if (previousRange != dateTimeRange) {
      await getOperations(1);
    }
  }

  Future<void> getOperations(int currentPage) async {
    emit(state.copyWith(currentPage: currentPage, isLoading: true));

    (await _repository.getProjects(
      status: ProjectStatus.closed,
      pageSize: state.pageSize,
      page: state.currentPage,
      projectUtilityStatus: state.projectStatus,
      timeRange: state.dateTimeRange,
    ))
        .fold(
      (error) {
        emit(
          state.copyWith(
            status: StateStatus.fetchingFailure,
            error: error.message,
            countPage: 0,
            currentPage: 1,
            projects: const [],
            isLoading: false,
            requestCounter: state.requestCounter + 1,
          ),
        );
      },
      (projectsPagination) {
        final chunk = projectsPagination.items
            .where((project) => project.projectId >= kMinProjectId);
        emit(
          state.copyWith(
            isLoading: false,
            status: StateStatus.fetchingSuccess,
            countPage: projectsPagination.pages,
            currentPage: projectsPagination.page,
            projects: [...state.projects, ...chunk],
            requestCounter: state.requestCounter + 1,
          ),
        );
      },
    );
  }
}
