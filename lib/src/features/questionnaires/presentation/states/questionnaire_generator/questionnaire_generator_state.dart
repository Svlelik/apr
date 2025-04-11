part of 'questionnaire_generator_bloc.dart';

@freezed
class QuestionnaireGeneratorState with _$QuestionnaireGeneratorState {
  const factory QuestionnaireGeneratorState({
    required FormGroup form,
    QuestionnaireModel? questionnaire,
    @Default(StateStatus.pure) StateStatus status,
    @Default({}) Map<int, List<QuestionModel>> pages,
    @Default([]) List<QuestionModel> questions,
    @Default(PageSize.xs) PageSize currentSize,
    @Default({}) Map<String, Object?> allAnswers,
  }) = _Initial;
}
