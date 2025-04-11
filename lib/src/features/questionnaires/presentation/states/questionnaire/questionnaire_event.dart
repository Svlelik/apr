part of 'questionnaire_bloc.dart';

@freezed
class QuestionnaireEvent with _$QuestionnaireEvent {
  const factory QuestionnaireEvent.started({required String id}) = _Started;

  const factory QuestionnaireEvent.updateAnswers({
    required String id,
    required UpdateAnswerRequestDTO data,
  }) = _UpdateAnswers;

  const factory QuestionnaireEvent.loaded({
    required QuestionnaireModel questionnaire,
    required Map<String, Object?> allAnswers,
  }) = _Loaded;

  const factory QuestionnaireEvent.failed({required Failure error}) = _Failed;

  const factory QuestionnaireEvent.formUpdated(Map<String, dynamic> data) =
      _FormUpdated;

  const factory QuestionnaireEvent.clearCacheForm(String id) = _ClearCacheForm;
}
