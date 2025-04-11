import 'package:intl/intl.dart';

class QuestionnairesI18n {
  static String get title => Intl.message(
        'questionnaires title',
        desc: 'Description for Questionnaires title',
        name: 'QuestionnairesI18n_title',
      );

  static String get questionnairesNotFound => Intl.message(
        'Questionnaires not found',
        desc: 'Description for Questionnaires not found',
        name: 'QuestionnairesI18n_questionnairesNotFound',
      );

  static String get save => Intl.message(
        'Сохранить',
        desc: 'Сохранить',
        name: 'QuestionnairesI18n_save',
      );

  static String get next => Intl.message(
        'Далее',
        desc: 'Далее',
        name: 'QuestionnairesI18n_next',
      );

  static String get prev => Intl.message(
        'Назад',
        name: 'QuestionnairesI18n_prev',
      );

  static String get extendedQuestionnaire => Intl.message(
        'Расширенная анкета',
        desc: 'Расширенная анкета',
        name: 'QuestionnairesI18n_extendedQuestionnaire',
      );

  static String get question => Intl.message(
        'Вопрос',
        desc: 'Вопрос',
        name: 'QuestionnairesI18n_question',
      );

  static String get requiredQuestion => Intl.message(
        'Обязательный вопрос',
        desc: 'Обязательный вопрос',
        name: 'QuestionnairesI18n_requiredQuestion',
      );

  static String get saveResultTitle => Intl.message(
        'Сохранить ответы?',
        desc: 'Сохранить ответы?',
        name: 'QuestionnairesI18n_saveResultTitle',
      );

  static String get saveResultDescription => Intl.message(
        'Данные можно будет изменить в любой момент',
        desc: 'Данные можно будет изменить в любой момент',
        name: 'QuestionnairesI18n_saveResultDescription',
      );

  static String get saveBtn => Intl.message(
        'Сохранить',
        desc: 'Сохранить',
        name: 'QuestionnairesI18n_saveBtn',
      );

  static String get notSaveBtn => Intl.message(
        'Не сохранять',
        desc: 'Не сохранять',
        name: 'QuestionnairesI18n_notSaveBtn',
      );

  static String get questionnaireProgress => Intl.message(
        'Прогресс опроса',
        name: 'QuestionnairesI18n_questionnaireProgress',
      );
}
