part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState({
    @Default(null) DateTimeRange? dateTimeRange,
    @Default(null) OperationType? operationType,
    @Default(true) bool isLoading,
    @Default([]) List<OperationEntity> operations,
    String? error,
  }) = _HistoryState;
}
