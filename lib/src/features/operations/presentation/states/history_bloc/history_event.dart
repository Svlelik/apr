part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.getHistory() = _GetHistory;

  const factory HistoryEvent.getMore() = _GetMore;

  const factory HistoryEvent.setOperationType(OperationType? type) =
      _SetOperationType;

  const factory HistoryEvent.setDateTimeRange(DateTimeRange? range) =
      _SetDateTimeRange;
}
