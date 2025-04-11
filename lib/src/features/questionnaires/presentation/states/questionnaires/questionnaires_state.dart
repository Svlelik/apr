part of 'questionnaires_bloc.dart';

@freezed
class QuestionnairesState with _$QuestionnairesState {
  const factory QuestionnairesState.initial() = _Initial;

  const factory QuestionnairesState.loading() = _Loading;

  const factory QuestionnairesState.success({
    @Default([]) List<QuestionnaireModel> questionnaires,
  }) = _Success;

  const factory QuestionnairesState.failure({required Failure error}) =
      _Failure;
}
