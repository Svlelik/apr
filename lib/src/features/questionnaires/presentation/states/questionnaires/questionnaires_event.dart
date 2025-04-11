part of 'questionnaires_bloc.dart';

@freezed
class QuestionnairesEvent with _$QuestionnairesEvent {
  const factory QuestionnairesEvent.started() = _Started;

  const factory QuestionnairesEvent.loaded({
    @Default([]) List<QuestionnaireModel> questionnaires,
  }) = _Loaded;

  const factory QuestionnairesEvent.failed({required Failure error}) = _Failed;

  const factory QuestionnairesEvent.refresh() = _Refresh;

  const factory QuestionnairesEvent.refreshPoints() = _RefreshPoints;
}
