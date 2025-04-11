import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'projects_bloc.freezed.dart';
part 'projects_event.dart';
part 'projects_state.dart';

class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  ProjectsBloc({
    required ProjectsRepository repository,
    required AuthManager<AuthenticatedUser> manager,
  })  : _repository = repository,
        _manager = manager,
        super(const _Initial()) {
    on<_Started>(_init);
  }

  final ProjectsRepository _repository;
  final AuthManager<AuthenticatedUser> _manager;

  Future<void> _init(_Started event, Emitter<ProjectsState> emit) async {
    emit(
      state.copyWith(
        status: StateStatus.fetchingInProgress,
        profile: _manager.user.value,
      ),
    );

    (await _repository.getProjects()).fold(
      (error) {
        emit(
          state.copyWith(
            status: StateStatus.fetchingFailure,
            error: error.message,
          ),
        );
      },
      (response) {
        emit(
          state.copyWith(
            status: StateStatus.fetchingSuccess,
            projects: response.items,
          ),
        );
      },
    );
  }
}
