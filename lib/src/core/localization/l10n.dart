import 'package:intl/intl.dart';

class CoreI18n {
  static String get forbiddenError => Intl.message(
        'Forbidden',
        desc: 'Http Error forbidden',
        name: 'CoreI18n_forbiddenError',
      );
  static String get internalError => Intl.message(
        'Internal Error',
        desc: 'Server Internal Error',
        name: 'CoreI18n_internalError',
      );
  static String get serviceUnavailableError => Intl.message(
        'Service Unavaliable',
        desc: 'Service Unavaliable Error',
        name: 'CoreI18n_serviceUnavailableError',
      );
  static String get notFoundError => Intl.message(
        'Not found',
        desc: 'Not found Error',
        name: 'CoreI18n_notFoundError',
      );
  static String get unknownError => Intl.message(
        'Unknown Error',
        desc: 'Unknown Error',
        name: 'CoreI18n_unknownError',
      );

  static String get unprocessableEntityError => Intl.message(
        'Unprocessable Entity error',
        desc: 'Unknown Error',
        name: 'CoreI18n_unprocessableEntityError',
      );

  static String get signOut => Intl.message(
        'Выйти',
        desc: 'Выйти',
        name: 'CoreI18n_signOut',
      );

  static String get continueBtn => Intl.message(
        'Продолжить',
        desc: 'Продолжить',
        name: 'CoreI18n_continueBtn',
      );

  static String get requiredErrorMessage => Intl.message(
        'Обязательный параметр',
        desc: 'Field must not be empty',
        name: 'CoreI18n_requiredErrorMessage',
      );

  static String maxValueErrorMessage(int value) => Intl.message(
        'Длина значения более $value символов',
        args: [value],
        desc: 'maxValueErrorMessage',
        name: 'CoreI18n_maxValueErrorMessage',
      );

  static String minValueErrorMessage(int value) => Intl.message(
        'Длина значения менее $value символов',
        args: [value],
        desc: 'minValueErrorMessage',
        name: 'CoreI18n_minValueErrorMessage',
      );

  static String get emailErrorMessage => Intl.message(
        'Почтовый адрес указан неверно',
        desc: 'email not valid',
        name: 'CoreI18n_emailErrorMessage',
      );

  static String get save => Intl.message(
        'Сохранить',
        name: 'CoreI18n_save',
      );

  static String get note => Intl.message(
        'Отменить',
        name: 'CoreI18n_note',
      );

  static String get backButtonCaption => Intl.message(
        'Назад',
        desc: 'Назад',
        name: 'CoreI18n_backButtonCaption',
      );

  static String get saveChanges => Intl.message(
        'Сохранить изменения',
        name: 'CoreI18n_saveChanges',
      );
}
