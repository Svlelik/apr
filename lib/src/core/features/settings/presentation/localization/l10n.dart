// ignore_for_file: lines_longer_than_80_chars

import 'package:intl/intl.dart';

class SettingsI18n {
  static String get title => Intl.message(
        'Настройки',
        desc: 'Settings page',
        name: 'SettingsI18n_title',
      );

  static String get theme => Intl.message(
        'Theme',
        desc: 'Theme',
        name: 'SettingsI18n_theme',
      );

  static String get lightTheme => Intl.message(
        'Light',
        desc: 'Light theme',
        name: 'SettingsI18n_lightTheme',
      );

  static String get darkTheme => Intl.message(
        'Dark',
        desc: 'Dark theme',
        name: 'SettingsI18n_darkTheme',
      );

  static String get systemTheme => Intl.message(
        'System',
        desc: 'System theme',
        name: 'SettingsI18n_systemTheme',
      );

  static String get selectTheme => Intl.message(
        'Select a theme',
        desc: 'Select a theme',
        name: 'SettingsI18n_selectTheme',
      );

  static String get selectLanguage => Intl.message(
        'Select language',
        desc: 'Select language',
        name: 'SettingsI18n_selectLanguage',
      );

  static String get systemLanguage => Intl.message(
        'System language',
        desc: 'System language',
        name: 'SettingsI18n_systemLanguage',
      );

  static String get changePinCode => Intl.message(
        'Изменить код входа',
        desc: 'Изменить код входа',
        name: 'SettingsI18n_changePinCode',
      );

  static String get useBiometrics => Intl.message(
        'Use biometrics?',
        desc: 'Use biometrics?',
        name: 'SettingsI18n_useBiometrics',
      );

  static String get useLocalAuth => Intl.message(
        'Use local auth?',
        desc: 'Use local auth?',
        name: 'SettingsI18n_useLocalAuth',
      );

  static String get signOut => Intl.message(
        'Выйти из аккаунта',
        desc: 'Выйти из аккаунта',
        name: 'SettingsI18n_signOut',
      );

  static String get signOutConfirmTitle => Intl.message(
        'Выйти из аккаунта?',
        desc: 'Выйти из аккаунта?',
        name: 'SettingsI18n_signOutConfirmTitle',
      );

  static String get signOutConfirmDescription => Intl.message(
        'При следующем входе вам нужно будет заново авторизоваться в приложении',
        desc:
            'При следующем входе вам нужно будет заново авторизоваться в приложении',
        name: 'SettingsI18n_signOutConfirmDescription',
      );

  static String get signOutConfirmNoBtn => Intl.message(
        'Не выходить',
        desc: 'Не выходить',
        name: 'SettingsI18n_signOutConfirmNoBtn',
      );

  static String get signOutConfirmYesBtn => Intl.message(
        'Выйти',
        desc: 'Выйти',
        name: 'SettingsI18n_signOutConfirmYesBtn',
      );

  static String get deleteAccount => Intl.message(
        'Для удаления аккаунта нажмите здесь',
        desc: 'Для удаления аккаунта нажмите здесь',
        name: 'SettingsI18n_deleteAccount',
      );

  static String get deleteAccountLinkText => Intl.message(
        'здесь',
        desc: 'здесь',
        name: 'SettingsI18n_deleteAccountLinkText',
      );

  static String get deleteAccountBtn => Intl.message(
        'Удалить аккаунт',
        desc: 'Удалить аккаунт',
        name: 'SettingsI18n_deleteAccountBtn',
      );

  static String get deleteAccountConfirmTitle => Intl.message(
        'Удалить аккаунт?',
        desc: 'Удалить аккаунт?',
        name: 'SettingsI18n_deleteAccountConfirmTitle',
      );

  static String get deleteAccountSuccessTitle => Intl.message(
        'Ваш аккаунт был удален',
        desc: 'Ваш аккаунт был удален',
        name: 'SettingsI18n_deleteAccountSuccessTitle',
      );

  static String get deleteAccountConfirmDescription => Intl.message(
        'При удалении акканунта все данные, в том числе накопленные баллы, будут удаленны',
        desc:
            'При удалении акканунта все данные, в том числе накопленные баллы, будут удаленны',
        name: 'SettingsI18n_deleteAccountConfirmDescription',
      );

  static String get deleteAccountConfirmNoBtn => Intl.message(
        'Не удалять',
        desc: 'Не удалять',
        name: 'SettingsI18n_deleteAccountConfirmNoBtn',
      );

  static String get deleteAccountConfirmYesBtn => Intl.message(
        'Удалить',
        desc: 'Удалить',
        name: 'SettingsI18n_deleteAccountConfirmYesBtn',
      );

  static String get rulesTitle => Intl.message(
        'Правила участия',
        desc: 'Правила участия',
        name: 'SettingsI18n_rulesTitle',
      );

  static String get faqTitle => Intl.message(
        'Частые вопросы',
        desc: 'Частые вопросы',
        name: 'SettingsI18n_faqTitle',
      );

  static String get supportTitle => Intl.message(
        'Поддержка',
        desc: 'Поддержка',
        name: 'SettingsI18n_supportTitle',
      );
}
