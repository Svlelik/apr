import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stories_bloc.freezed.dart';
part 'stories_event.dart';
part 'stories_state.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  StoriesBloc({
    required StoriesRepository repository,
  })  : _repository = repository,
        super(const StoriesState()) {
    on<_Started>(_started);
  }

  final StoriesRepository _repository;

  Future<void> _started(_Started event, Emitter<StoriesState> emit) async {
    emit(state.copyWith(status: StateStatus.fetchingInProgress));
    final result = await _repository.getStories();

    result.fold((error) {
      emit(
        state.copyWith(
          status: StateStatus.fetchingFailure,
          error: error.getLocalizedString(),
        ),
      );
    }, (response) {
      emit(
        state.copyWith(
          storesResponse: response,
          status: StateStatus.fetchingSuccess,
        ),
      );
    });
  }
}
