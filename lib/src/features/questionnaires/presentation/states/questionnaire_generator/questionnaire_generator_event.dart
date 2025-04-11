part of 'questionnaire_generator_bloc.dart';

@freezed
class QuestionnaireGeneratorEvent with _$QuestionnaireGeneratorEvent {
  const factory QuestionnaireGeneratorEvent.started({
    required QuestionnaireModel questionnaire,
    required List<QuestionModel> questions,
    required PageSize currentSize,
    required Map<String, Object?> allAnswers,
    Map<String, dynamic>? cacheData,
    void Function(Map<String, dynamic> data)? onUpdateForm,
  }) = _Started;

  const factory QuestionnaireGeneratorEvent.generatePages() = _GeneratePages;
}
