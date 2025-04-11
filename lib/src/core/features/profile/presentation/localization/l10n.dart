// ignore_for_file: lines_longer_than_80_chars

import 'package:intl/intl.dart';

class ProfileI18n {
  static String get title => Intl.message(
        'Ваши данные',
        desc: 'Description for Profile title',
        name: 'ProfileI18n_title',
      );

  static String get profileNotFound => Intl.message(
        'Профиль не найден',
        desc: 'Description for Profile not found',
        name: 'ProfileI18n_profileNotFound',
      );

  static String get settings => Intl.message(
        'Настройки',
        desc: 'Настройки',
        name: 'ProfileI18n_settings',
      );

  static String get myProfile => Intl.message(
        'Мой профиль',
        desc: 'Мой профиль',
        name: 'ProfileI18n_myProfile',
      );

  static String get fill => Intl.message(
        'Заполнить',
        desc: 'Заполнить',
        name: 'ProfileI18n_fill',
      );

  static String get fillProfile => Intl.message(
        'Заполнить информацию',
        desc: 'Заполнить информацию',
        name: 'ProfileI18n_fillProfile',
      );

  static String get mainInfoTitle => Intl.message(
        'Основная информация',
        desc: 'Основная информация',
        name: 'ProfileI18n_mainInfoTitle',
      );

  static String get mainQuestionnaire => Intl.message(
        'Основная анкета',
        name: 'ProfileI18n_mainQuestionnaire',
      );

  static String get extendedQuestionnaire => Intl.message(
        'Расширенные анкеты',
        name: 'ProfileI18n_extendedQuestionnaire',
      );

  static String get profileSettings => Intl.message(
        'Настройки аккаунта',
        name: 'ProfileI18n_profileSettings',
      );

  static String get mainInfoText => Intl.message(
        'Для участия в опросах оставьте, пожалуйста, немного информации о себе',
        desc:
            'Для участи в опросах оставьте, пожалуйста, немного информации о себе',
        name: 'ProfileI18n_mainInfoText',
      );

  static String get profileFormTitle => Intl.message(
        'Данные участника',
        desc: 'Данные участника',
        name: 'ProfileI18n_profileFormTitle',
      );

  static String get profileFormDesc => Intl.message(
        'Пожалуйста, указывайте ваши реальные данные, т.к. они будут использоваться для вывода баллов',
        desc:
            'Пожалуйста, указывайте ваши реальные данные, т.к. они будут использоваться для вывода баллов',
        name: 'ProfileI18n_profileFormDesc',
      );

  static String get fio => Intl.message(
        'ФИО',
        desc: 'ФИО',
        name: 'ProfileI18n_fio',
      );

  static String get lastName => Intl.message(
        'Фамилия',
        desc: 'Фамилия',
        name: 'ProfileI18n_lastName',
      );

  static String get firstName => Intl.message(
        'Имя',
        desc: 'Имя',
        name: 'ProfileI18n_firstName',
      );

  static String get middleName => Intl.message(
        'Отчество',
        desc: 'Отчество',
        name: 'ProfileI18n_middleName',
      );

  static String get email => Intl.message(
        'Email',
        desc: 'Email',
        name: 'ProfileI18n_email',
      );

  static String get sex => Intl.message(
        'Пол',
        desc: 'Пол',
        name: 'ProfileI18n_sex',
      );

  static String get phone => Intl.message(
        'Телефон',
        desc: 'Телефон',
        name: 'ProfileI18n_phone',
      );

  static String get birthday => Intl.message(
        'Дата рождения',
        desc: 'День рождения',
        name: 'ProfileI18n_birthday',
      );

  static String get city => Intl.message(
        'Населенный пункт',
        desc: 'Населенный пункт',
        name: 'ProfileI18n_city',
      );

  static String get region => Intl.message(
        'Регион',
        desc: 'Регион',
        name: 'ProfileI18n_region',
      );

  static String get adult => Intl.message(
        'Я получил согласие родителей на участие в Проекте и обработку моих персональных данных',
        name: 'ProfileI18n_adult',
      );

  static String get my => Intl.message(
        'Мой',
        desc: 'Мой',
        name: 'ProfileI18n_my',
      );

  static String get profile => Intl.message(
        'профиль',
        desc: 'профиль',
        name: 'ProfileI18n_profile',
      );

  static String get fillingProfile => Intl.message(
        'Заполненность профиля',
        desc: 'Заполненность профиля',
        name: 'ProfileI18n_fillingProfile',
      );

  static String get fillingProfileDescription => Intl.message(
        'Расскажите о себе подробнее, и мы подберем наиболее подходящие опросы',
        name: 'ProfileI18n_fillingProfileDescription',
      );

  static String get phoneNumber => Intl.message(
        'Номер телефона',
        desc: 'Номер телефона',
        name: 'ProfileI18n_phoneNumber',
      );

  static String get edit => Intl.message(
        'Редактировать',
        desc: 'Редактировать',
        name: 'ProfileI18n_edit',
      );

  static String get idCardDescription => Intl.message(
        'Это ваш номер для участия в акциях и розыгрышах',
        name: 'ProfileI18n_idCardDescription',
      );

  static String get accountSettings => Intl.message(
        'Настройки аккаунта',
        name: 'ProfileI18n_accountSettings',
      );

  static String get confirmEmailTitle => Intl.message(
        'Подтвердите почту',
        name: 'ProfileI18n_confirmEmailTitle',
      );

  static String get confirmPhoneTitle => Intl.message(
        'Подтвердите телефон',
        name: 'ProfileI18n_confirmPhoneTitle',
      );

  static String confirmDescription(String direction) => Intl.message(
        'Сообщение c кодом подтверждения отправлено на $direction',
        name: 'ProfileI18n_confirmDescription',
        args: [direction],
      );

  static String otpTimer(String value) => Intl.message(
        'Получить новый код можно через $value',
        desc: 'Получить новый код можно через ',
        name: 'ProfileI18n_otpTimer',
        args: [value],
      );

  static String get getOtpTimer => Intl.message(
        'Отправить код повторно',
        desc: 'Отправить код повторно',
        name: 'ProfileI18n_getOtpTimer',
      );

  static String get confirmBtn => Intl.message(
        'Отправить',
        desc: 'Отправить',
        name: 'ProfileI18n_confirmBtn',
      );

  static String get currentPassword => Intl.message(
        'Текущий пароль',
        name: 'ProfileI18n_currentPassword',
      );

  static String get newPassword => Intl.message(
        'Новый пароль',
        name: 'ProfileI18n_newPassword',
      );

  static String get confirmPassword => Intl.message(
        'Повторите пароль',
        name: 'ProfileI18n_confirmPassword',
      );

  static String get passwordPatternError => Intl.message(
        'Неверный формат пароля',
        name: 'ProfileI18n_passwordPatternError',
      );

  static String get passwordMustMatchError => Intl.message(
        'Введенные пароли не совпадают',
        name: 'ProfileI18n_passwordMustMatchError',
      );

  static String get newPasswordSaver => Intl.message(
        'Новый пароль успешно сохранен',
        name: 'ProfileI18n_newPasswordSaver',
      );

  static String get changePassword => Intl.message(
        'Изменить пароль',
        name: 'ProfileI18n_changePassword',
      );

  static String get youSure => Intl.message(
        'Вы уверены?',
        name: 'ProfileI18n_youSure',
      );

  static String get dataNotSave => Intl.message(
        'Данные не будут сохранены',
        name: 'ProfileI18n_dataNotSave',
      );

  static String get addedCityDescription => Intl.message(
        'Населённого пункта не оказалось в списке. '
        'Проверьте написание или добавьте свой населенный пункт вручную',
        name: 'ProfileI18n_addedCityDescription',
      );

  static String get addedCityButtonLabel => Intl.message(
        'Добавить',
        name: 'ProfileI18n_addedCityButtonLabel',
      );

  static String get confirmedModelTitle => Intl.message(
        'Выйти без подтверждения?',
        name: 'ProfileI18n_confirmedModelTitle',
      );

  static String get confirmedModelDescription => Intl.message(
        'Данные не будут сохранены',
        name: 'ProfileI18n_confirmedModelDescription',
      );

  static String get yes => Intl.message(
        'Да',
        name: 'ProfileI18n_yes',
      );

  static String get no => Intl.message(
        'Нет',
        name: 'ProfileI18n_no',
      );

  static String get phoneSavedNotification => Intl.message(
        'Ваш номер телефона успешно сохранен',
        name: 'ProfileI18n_phoneSavedNotification',
      );

  static String get emailSavedNotification => Intl.message(
        'Ваша электронная почта успешно сохранена',
        name: 'ProfileI18n_emailSavedNotification',
      );

  static String get patternError => Intl.message(
        'Недопустимые символы',
        name: 'ProfileI18n_patternError',
      );

  static String get onlyRussianLetters => Intl.message(
        'Допустимы только русские буквы и дефис в середине',
        name: 'ProfileI18n_onlyRussianLetters',
      );

  static String lengthError(int length) => Intl.message(
        'Максимальная длина $length символов',
        name: 'ProfileI18n_lengthError',
        args: [length],
      );
}
