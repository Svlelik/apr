import 'package:intl/intl.dart';

class MenuI18n {
  static String get title => Intl.message(
        'Меню',
        desc: 'Меню',
        name: 'MenuI18n_title',
      );

  static String get withdraw => Intl.message(
        'Вывести баллы',
        desc: 'Вывести баллы',
        name: 'MenuI18n_withdraw',
      );

  static String get history => Intl.message(
        'История начислений',
        desc: 'История начислений',
        name: 'MenuI18n_history',
      );

  static String get archive => Intl.message(
        'Архив опросов',
        desc: 'Архив опросов',
        name: 'MenuI18n_archive',
      );

  static String get rules => Intl.message(
        'Правила участия',
        desc: 'Правила участия',
        name: 'MenuI18n_rules',
      );

  static String get faq => Intl.message(
        'Частые вопросы',
        desc: 'Частые вопросы',
        name: 'MenuI18n_faq',
      );

  static String get faqPageTitle => Intl.message(
        'Отвечаем на частые вопросы',
        desc: 'Отвечаем на частые вопросы',
        name: 'MenuI18n_faqPageTitle',
      );

  static String get rulesPageTitle => Intl.message(
        'Подробности о проекте и правилах участия',
        desc: 'Подробности о проекте и правилах участия',
        name: 'MenuI18n_rulesPageTitle',
      );

  static String get operationsHistoryTitle => Intl.message(
        'История операций',
        desc: 'История операций',
        name: 'MenuI18n_operationsHistoryTitle',
      );
}
