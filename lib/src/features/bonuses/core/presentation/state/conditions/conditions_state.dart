part of 'conditions_bloc.dart';

@freezed
class ConditionsState with _$ConditionsState {
  const factory ConditionsState.initial({
    @Default(StateStatus.pure) StateStatus status,
    @Default(null) DocumentsResponseModel? documents,
  }) = _Initial;
}
