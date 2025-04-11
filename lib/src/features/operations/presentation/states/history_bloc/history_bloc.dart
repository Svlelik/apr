import 'package:apr_sdk/apr_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_bloc.freezed.dart';
part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc({
    required PointsRepository repository,
  })  : _repository = repository,
        super(const HistoryState()) {
    on<_GetHistory>(_getHistory);
    on<_GetMore>(_getMore);
    on<_SetOperationType>(_setOperationType);
    on<_SetDateTimeRange>(_setDateTimeRange);
  }

  final PointsRepository _repository;

  final int _pageSize = 8;
  int total = 0;

  Future<void> _setOperationType(
    _SetOperationType event,
    Emitter<HistoryState> emit,
  ) async {
    final prevType = state.operationType;
    emit(state.copyWith(operationType: event.type));
    if (prevType != event.type) {
      add(const _GetHistory());
    }
  }

  Future<void> _setDateTimeRange(
    _SetDateTimeRange event,
    Emitter<HistoryState> emit,
  ) async {
    final prevType = state.dateTimeRange;
    emit(state.copyWith(dateTimeRange: event.range));
    if (prevType != event.range) {
      add(const _GetHistory());
    }
  }

  Future<void> _getMore(
    _GetMore event,
    Emitter<HistoryState> emit,
  ) async {
    if (state.isLoading || total == state.operations.length || total == 0) {
      return;
    }

    emit(state.copyWith(isLoading: true));

    try {
      final response = await _repository.getOperationsHistory(
        operationType: state.operationType,
        from: state.dateTimeRange?.start,
        to: state.dateTimeRange?.end,
        page: (state.operations.length ~/ _pageSize) + 1,
        pageSize: _pageSize,
      );

      response.fold(
        (l) {
          emit(
            state.copyWith(
              isLoading: false,
              error: l.message,
            ),
          );
        },
        (r) {
          emit(
            state.copyWith(
              isLoading: false,
              operations: [...state.operations, ...r.items],
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _getHistory(
    _GetHistory event,
    Emitter<HistoryState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          isLoading: true,
          operations: [],
        ),
      );

      final response = await _repository.getOperationsHistory(
        operationType: state.operationType,
        from: state.dateTimeRange?.start,
        to: state.dateTimeRange?.end,
        pageSize: _pageSize,
      );

      response.fold(
        (l) {
          emit(
            state.copyWith(
              isLoading: false,
              error: l.getLocalizedString(),
            ),
          );
        },
        (r) {
          total = r.totalCount;
          emit(
            state.copyWith(
              isLoading: false,
              operations: r.items,
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          error: e.toString(),
        ),
      );
    }
  }
}
