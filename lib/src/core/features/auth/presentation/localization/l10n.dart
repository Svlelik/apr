// ignore_for_file: lines_longer_than_80_chars

import 'package:intl/intl.dart';

class AuthI18n {
  static String get login => Intl.message(
        'Login',
        desc: 'Login',
        name: 'AuthI18n_login',
      );

  static String get loginRequired => Intl.message(
        'Login required',
        desc: 'Login required',
        name: 'AuthI18n_loginRequired',
      );

  static String get password => Intl.message(
        'Password',
        desc: 'Password',
        name: 'AuthI18n_password',
      );

  static String get passwordRequired => Intl.message(
        'The password must not be empty',
        desc: 'Password validation message',
        name: 'AuthI18n_passwordRequired',
      );

  static String get userNotFound => Intl.message(
        'Incorrect username or password',
        desc: 'Incorrect username or password message',
        name: 'AuthI18n_userNotFound',
      );

  static String get minimumPassword => Intl.message(
        'Password must have at least 6 characters',
        desc: 'Password must have at least 6 characters',
        name: 'AuthI18n_minimumPassword',
      );

  static String get checkInternetConnection => Intl.message(
        'Check internet connection',
        desc: 'Check internet connection',
        name: 'AuthI18n_checkInternetConnection',
      );

  static String get enterPinCode => Intl.message(
        'Enter pin code',
        desc: 'Enter pin code',
        name: 'AuthI18n_enterPinCode',
      );

  static String get repeatPinCode => Intl.message(
        'Повторите код',
        desc: 'Повторите код',
        name: 'AuthI18n_repeatPinCode',
      );

  static String get repeatPinCodeDesc => Intl.message(
        'Введите код еще раз для подтверждения',
        desc: 'Введите код еще раз для подтверждения',
        name: 'AuthI18n_repeatPinCodeDesc',
      );

  static String get settingPinCode => Intl.message(
        'Установите код',
        desc: 'Установите код',
        name: 'AuthI18n_settingPinCode',
      );

  static String get settingPinCodeDesc => Intl.message(
        'Для быстрого доступа в приложение\nустановите код',
        desc: 'Для быстрого доступа в приложение установите код',
        name: 'AuthI18n_settingPinCodeDesc',
      );

  static String pinCodeMustContain(int number) {
    return Intl.plural(
      number,
      one: 'Pin code must contain $number character',
      other: 'Pin code must contain $number characters',
      args: [number],
      desc: 'Pin codes must contain {number} character(s)',
      name: 'AuthI18n_pinCodeMustContain',
    );
  }

  static String get pinCodesDoNotMatch => Intl.message(
        'Код не совпадает',
        desc: 'Код не совпадает',
        name: 'AuthI18n_pinCodesDoNotMatch',
      );

  static String get invalidPin => Intl.message(
        'Invalid PIN',
        desc: 'Invalid PIN',
        name: 'AuthI18n_invalidPin',
      );

  static String get unknownError => Intl.message(
        'Unknown error. Please try later',
        desc: 'Unknown error. Please try later',
        name: 'AuthI18n_unknownError',
      );

  static String get signInToAccessTheApp => Intl.message(
        'Sign in to access the app',
        desc: 'Sign in to access the app',
        name: 'AuthI18n_signInToAccessTheApp',
      );

  static String get reset =>
      Intl.message('Reset', desc: 'Reset', name: 'AuthI18n_reset');

  static String get forgotPinCode => Intl.message(
        'Забыли код?',
        desc: 'Reset',
        name: 'AuthI18n_forgotPinCode',
      );

  static String get delete =>
      Intl.message('Delete', desc: 'Delete', name: 'AuthI18n_delete');

  static String get useBiometricsToLogin => Intl.message(
        'Use biometrics to login?',
        desc: 'Use biometrics to login?',
        name: 'AuthI18n_useBiometricsToLogin',
      );

  static String get supportTitle => Intl.message(
        'Написать в поддержку',
        desc: 'Написать в поддержку',
        name: 'AuthI18n_supportTitle',
      );

  static String get supportDescription => Intl.message(
        'Отправьте запрос, и мы свяжемся с вами в ближайшее время.',
        desc: 'Отправьте запрос, и мы свяжемся с вами в ближайшее время.',
        name: 'AuthI18n_supportDescription',
      );

  static String get supportEmail => Intl.message(
        'Ваш емайл',
        desc: 'Ваш емайл',
        name: 'AuthI18n_supportEmail',
      );

  static String get supportMessage => Intl.message(
        'Введите здесь свой вопрос или описание проблемы.',
        desc: 'Введите здесь свой вопрос или описание проблемы.',
        name: 'AuthI18n_supportMessage',
      );

  static String get supportSubmit => Intl.message(
        'Отправить',
        desc: 'Отправить',
        name: 'AuthI18n_supportSubmit',
      );

  static String get signInBtn => Intl.message(
        'Продолжить',
        desc: 'Продолжить',
        name: 'AuthI18n_signInBtn',
      );

  static String get signInTitle => Intl.message(
        'Введите свой\nномер телефона',
        desc: 'Введите свой номер телефона',
        name: 'AuthI18n_signInTitle',
      );

  static String get signInDescription => Intl.message(
        'Мы вышлем на него код для проверки',
        desc: 'Мы вышлем на него код для проверки',
        name: 'AuthI18n_signInDescription',
      );

  static String get phonePatternError => Intl.message(
        'Не правильно указан номер телефона',
        desc: 'phonePatternError',
        name: 'AuthI18n_phonePatternError',
      );

  static String get isApprovalPDNTitle => Intl.message(
        'Я согласен на ',
        desc: 'agreement',
        name: 'AuthI18n_isApprovalPDNTitle',
      );

  static String get isApprovalPDNLink => Intl.message(
        'обработку персональных данных',
        desc: 'agreement',
        name: 'AuthI18n_isApprovalPDNLink',
      );

  static String get isApprovalParticipationTitle => Intl.message(
        'Я согласен с ',
        desc: 'agreement',
        name: 'AuthI18n_isApprovalParticipationTitle',
      );

  static String get isApprovalParticipationLink => Intl.message(
        'Пользовательским соглашением, Лицензионным договором и Политикой конфиденциальности',
        desc: 'agreement',
        name: 'AuthI18n_isApprovalParticipationLink',
      );

  static String get agreementCookiesPolicy => Intl.message(
        'Политикой использования Cookies',
        desc: 'Ссылка которая должна подсвечиваться',
        name: 'AuthI18n_agreementCookiesPolicy',
      );

  static String get otpTitle => Intl.message(
        'Введите код из смс',
        desc: 'Введите код из смс',
        name: 'AuthI18n_otpTitle',
      );

  static String otpDescription(String value) => Intl.message(
        'Отправили на $value',
        desc: 'Введите код из смс',
        name: 'AuthI18n_otpDescription',
        args: [value],
      );

  static String otpTimer(String value) => Intl.message(
        'Получить новый код можно через $value',
        desc: 'Получить новый код можно через ',
        name: 'AuthI18n_otpTimer',
        args: [value],
      );

  static String get getOtpTimer => Intl.message(
        'Отправить код повторно',
        desc: 'Отправить код повторно',
        name: 'AuthI18n_getOtpTimer',
      );

  static String get accessBlocked => Intl.message(
        'Доступ заблокирован',
        desc: 'Доступ заблокирован',
        name: 'AuthI18n_accessBlocked',
      );

  static String get accessBlockedDesc => Intl.message(
        'Неверный код введен более 5 раз. Повторить попытку можно будет через',
        desc:
            'Неверный код введен более 5 раз. Повторить попытку можно будет через',
        name: 'AuthI18n_accessBlockedDesc',
      );

  static String accountBlokedDesc(String value) => Intl.message(
        'К сожалению, аккаунт $value заблокирован. Вы можете обратиться в поддержку за помощью',
        desc:
            'К сожалению, аккаунт заблокирован. Вы можете обратиться в поддержку за помощью',
        name: 'AuthI18n_accountBlokedDesc',
        args: [value],
      );

  static String get supportBtn => Intl.message(
        'Обратиться в поддержку',
        desc: 'Обратиться в поддержку',
        name: 'AuthI18n_supportBtn',
      );

  static String get skipBiometry => Intl.message(
        'Пропустить',
        desc: 'Пропустить',
        name: 'AuthI18n_skipBiometry',
      );

  static String get faceId => Intl.message(
        'Face ID',
        desc: 'Face ID',
        name: 'AuthI18n_faceId',
      );

  static String get faceIdDescription => Intl.message(
        'Подключите распознавание лица, чтобы каждый раз не вводить код при входе',
        desc:
            'Подключите распознавание лица, чтобы каждый раз не вводить код при входе',
        name: 'AuthI18n_faceIdDescription',
      );

  static String get touchId => Intl.message(
        'Touch ID',
        desc: 'Touch ID',
        name: 'AuthI18n_touchId',
      );

  static String get touchIdDescription => Intl.message(
        'Подключите распознавание отпечатка пальца, чтобы каждый раз не вводить код при входе',
        desc:
            'Подключите распознавание отпечатка пальца, чтобы каждый раз не вводить код при входе',
        name: 'AuthI18n_touchIdDescription',
      );

  static String get enableBiometry => Intl.message(
        'Подключить',
        desc: 'Подключить',
        name: 'AuthI18n_enableBiometry',
      );

  static String get phone => Intl.message(
        'Телефон',
        desc: 'Телефон',
        name: 'AuthI18n_phone',
      );
}
