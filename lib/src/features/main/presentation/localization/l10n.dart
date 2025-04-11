import 'package:intl/intl.dart';

class MainI18n {
  static String get homeBottomMenuItem => Intl.message(
        'Главная',
        name: 'MainI18n_homeBottomMenuItem',
      );

  static String get menuBottomMenuItem => Intl.message(
        'Меню',
        name: 'MainI18n_menuBottomMenuItem',
      );

  static String get profileBottomMenuItem => Intl.message(
        'Профиль',
        name: 'MainI18n_profileBottomMenuItem',
      );

  static String get supportBottomMenuItem => Intl.message(
        'Поддержка',
        name: 'MainI18n_supportBottomMenuItem',
      );

  static String get surveyArchive => Intl.message(
        'Архив опросов',
        desc: 'Архив опросов',
        name: 'MainI18n_surveyArchive',
      );
}
