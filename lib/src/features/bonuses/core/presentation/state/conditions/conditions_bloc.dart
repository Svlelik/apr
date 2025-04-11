import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conditions_bloc.freezed.dart';
part 'conditions_event.dart';
part 'conditions_state.dart';

class ConditionsBloc extends Bloc<ConditionsEvent, ConditionsState> {
  ConditionsBloc({
    required DocumentsRepository repository,
  })  : _repository = repository,
        super(const _Initial()) {
    on<_Started>(_started);
    add(const _Started());
  }

  final DocumentsRepository _repository;

  Future<void> _started(
    _Started event,
    Emitter<ConditionsState> emit,
  ) async {
    (await _repository.getDocuments()).fold(
      (error) {},
      (documents) {
        emit(
          state.copyWith(
            status: StateStatus.ready,
            documents: documents,
          ),
        );
      },
    );
  }
}
