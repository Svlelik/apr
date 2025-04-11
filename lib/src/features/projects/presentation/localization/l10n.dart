import 'package:apr_sdk/apr_sdk.dart';
import 'package:intl/intl.dart';

class ProjectsI18n {
  static String get title => Intl.message(
        'operations title',
        desc: 'Description for Projects title',
        name: 'ProjectsI18n_title',
      );

  static String get operationsNotFound => Intl.message(
        'Projects not found',
        desc: 'Description for Projects not found',
        name: 'ProjectsI18n_operationsNotFound',
      );

  static String get projectsTitle => Intl.message(
        'Доступные опросы',
        desc: 'Доступные опросы',
        name: 'ProjectsI18n_projectsTitle',
      );

  static String get fillProfile => Intl.message(
        'Заполните профиль',
        desc: 'Заполните профиль',
        name: 'ProjectsI18n_fillProfile',
      );

  static String get newPollsWillAppearHere => Intl.message(
        'Здесь появятся новые опросы',
        desc: 'Заполните профиль',
        name: 'ProjectsI18n_newPollsWillAppearHere',
      );

  static String get allProjectsDone => Intl.message(
        'Вы прошли все опросы!',
        desc: 'Заполните профиль',
        name: 'ProjectsI18n_allProjectsDone',
      );

  static String get allProjectsDoneDesc => Intl.message(
        'Продолжайте в том же духе. Скоро мы пригласим вас поучаствовать в новых опросах. А пока можете ',
        name: 'ProjectsI18n_allProjectsDoneDesc',
      );

  static String get withdrawAccumulatedPoints => Intl.message(
        'обменять накопившиеся баллы',
        name: 'ProjectsI18n_withdrawAccumulatedPoints',
      );

  static String get incomplete => Intl.message(
        'Не завершён',
        name: 'ProjectsI18n_incomplete',
      );

  static String fillProfileDescription(String index) => Intl.select(
        index,
        {
          'i0': 'Чтобы получать опросы, заполните ',
          'i1': 'личные данные',
          'i2': ' в профиле',
        },
        desc: 'fillProfileDescription',
        name: 'ProjectsI18n_fillProfileDescription',
        args: [index],
      );

  static String get needToConfirmPhoneNumberTitle => Intl.message(
        'Необходимо подтвердить номер телефона',
        desc: 'needToConfirmPhoneNumberTitle',
        name: 'ProjectsI18n_needToConfirmPhoneNumberTitle',
      );
  static String needToConfirmPhoneNumberDescription(String index) =>
      Intl.select(
        index,
        {
          'i0': 'Чтобы подтвердить номер телефона перейдите в ',
          'i1': 'Основную анкету',
          'i2': ' профиля',
        },
        desc: 'needToConfirmPhoneNumberDescription',
        name: 'ProjectsI18n_needToConfirmPhoneNumberDescription',
        args: [index],
      );

  static String fillProfileDescriptionQuestionnaires(String index) =>
      Intl.select(
        index,
        {
          'i0': 'Чтобы получать больше опросов заполните ',
          'i1': 'расширенные анкеты',
          'i2': ' в профиле',
        },
        desc: 'fillProfileDescription',
        name: 'ProjectsI18n_fillProfileDescriptionQuestionnaires',
        args: [index],
      );

  static String get surveyArchiveIsEmpty => Intl.message(
        'Архив опросов пуст',
        name: 'ProjectsI18n_surveyArchiveIsEmpty',
        desc: 'surveyArchiveIsEmpty',
      );

  static String get surveyArchiveIsEmptyDesc => Intl.message(
        'Вы пока не принимали участия в опросах.',
        name: 'ProjectsI18n_surveyArchiveIsEmptyDesc',
        desc: 'surveyArchiveIsEmptyDesc',
      );

  static String projectUtilityStatus(ProjectUtilityStatus type) => Intl.select(
        type,
        {
          ProjectUtilityStatus.finished: 'Завершенные',
          ProjectUtilityStatus.unfinished: 'Не завершенные',
        },
        desc: 'operationType',
        name: 'ProjectsI18n_projectUtilityStatus',
        args: [type],
      );

  static String get optingOut => Intl.message(
        'Отказ от участия.',
        desc: 'Отказ от участия',
        name: 'ProjectsI18n_optingOut',
      );

  static String get min => Intl.message(
        'мин',
        desc: 'мин',
        name: 'ProjectsI18n_min',
      );
}
