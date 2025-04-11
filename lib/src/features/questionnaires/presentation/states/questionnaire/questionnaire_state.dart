part of 'questionnaire_bloc.dart';

@freezed
class QuestionnaireState with _$QuestionnaireState {
  const factory QuestionnaireState.initial() = _Initial;

  const factory QuestionnaireState.loading() = _Loading;

  const factory QuestionnaireState.success({
    required QuestionnaireModel questionnaire,
    required Future<bool> Function() onPopInvoked,
    Map<String, dynamic>? cacheData,
    @Default({}) Map<String, Object?> allAnswers,
  }) = _Success;

  const factory QuestionnaireState.failure({required Failure error}) = _Failure;
}
