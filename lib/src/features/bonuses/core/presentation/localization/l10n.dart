import 'package:intl/intl.dart';

class BonusesI18n {
  static String get title => Intl.message(
        'Обмен баллов',
        name: 'BonusesI18n_title',
      );

  static String get passportTitle => Intl.message(
        'Паспортные данные',
        name: 'BonusesI18n_passportTitle',
      );

  static String get fileTitle => Intl.message(
        'Приложенные файлы',
        name: 'BonusesI18n_fileTitle',
      );

  static String get select => Intl.message(
        'Выбрать',
        name: 'BonusesI18n_select',
      );

  static String get passportDescription => Intl.message(
        'Вы сможете изменить данные после того, как будет пройдена верификация',
        name: 'BonusesI18n_passportDescription',
      );

  static String get passportVerificationData => Intl.message(
        'Данные на верификации',
        name: 'BonusesI18n_passportVerificationData',
      );

  static String get writheTabLabel => Intl.message(
        'Способы обмена',
        name: 'BonusesI18n_writheTabLabel',
      );

  static String get conditionsTabLabel => Intl.message(
        'Условия использования',
        name: 'BonusesI18n_conditionsTabLabel',
      );

  static String get questionsTabLabel => Intl.message(
        'Частые вопросы',
        name: 'BonusesI18n_questionsTabLabel',
      );

  static String get withdrawalLimitExceeded => Intl.message(
        'Превышен лимит обмена баллов',
        name: 'BonusesI18n_withdrawalLimitExceeded',
      );

  static String get withdrawalLimitExceededDescription => Intl.message(
        'Вы можете обменять не более 2 500 баллов в течение календарного года',
        name: 'BonusesI18n_withdrawalLimitExceededDescription',
      );

  static String get generalInformation => Intl.message(
        'Общая информация',
        name: 'BonusesI18n_generalInformation',
      );

  static String get getPassportInfoButton => Intl.message(
        'Заполнить паспортные данные',
        name: 'BonusesI18n_getPassportInfoButton',
      );

  static String get generalInformationBonusesTitle => Intl.message(
        'Баллы',
        name: 'BonusesI18n_generalInformationBonusesTitle',
      );

  static String get generalInformationBonusesDescription => Intl.message(
        'Баллы можно использовать для пополнения личной банковской карты и счета мобильного телефона',
        name: 'BonusesI18n_generalInformationBonusesDescription',
      );

  static String get generalInformationBonusesMinCountTitle => Intl.message(
        '1 000 ₽',
        name: 'BonusesI18n_generalInformationBonusesMinCountTitle',
      );

  static String get generalInformationBonusesMinCountDescription =>
      Intl.message(
        'Минимальный перевод на вашу банковскую карту',
        name: 'BonusesI18n_generalInformationBonusesMinCountDescription',
      );

  static String get generalInformationBonusesMinCountPhoneTitle => Intl.message(
        '500 ₽',
        name: 'BonusesI18n_generalInformationBonusesMinCountPhoneTitle',
      );

  static String get generalInformationBonusesMinCountPhoneDescription =>
      Intl.message(
        'Минимальная сумма пополнения счета мобильного телефона ',
        name: 'BonusesI18n_generalInformationBonusesMinCountPhoneDescription',
      );

  static String get generalInformationBonusesMinBonusesTitle => Intl.message(
        '2 999 баллов',
        name: 'BonusesI18n_generalInformationBonusesMinBonusesTitle',
      );

  static String get generalInformationBonusesMinBonusesDescription =>
      Intl.message(
        'Максимальная сумма баллов, которые можно обменять в год',
        name: 'BonusesI18n_generalInformationBonusesMinBonusesDescription',
      );

  static String get generalInformationTitle => Intl.message(
        'Детальная информация',
        name: 'BonusesI18n_generalInformationTitle',
      );

  static String get generalInformationDescription => Intl.message(
        'С детальной информацией о правилах обмена баллов можно ознакомиться в документах в разделе `«Условия использования»`',
        name: 'BonusesI18n_generalInformationDescription',
      );

  static String get lastName => Intl.message(
        'Фамилия',
        desc: 'Фамилия',
        name: 'BonusesI18n_lastName',
      );

  static String get firstName => Intl.message(
        'Имя',
        desc: 'Имя',
        name: 'BonusesI18n_firstName',
      );

  static String get middleName => Intl.message(
        'Отчество',
        desc: 'Отчество',
        name: 'BonusesI18n_middleName',
      );

  static String get birthday => Intl.message(
        'Дата рождения',
        desc: 'День рождения',
        name: 'BonusesI18n_birthday',
      );

  static String get iin => Intl.message(
        'ИНН',
        desc: 'ИНН',
        name: 'BonusesI18n_iin',
      );

  static String get passportSeriesAndNumber => Intl.message(
        'Серия и номер паспорта',
        desc: 'Серия и номер паспорта',
        name: 'BonusesI18n_passportSeriesAndNumber',
      );

  static String get dateOfIssue => Intl.message(
        'Дата выдачи',
        desc: 'Дата выдачи',
        name: 'BonusesI18n_dateOfIssue',
      );

  static String get issuedBy => Intl.message(
        'Кем выдан',
        desc: 'Кем выдан',
        name: 'BonusesI18n_issuedBy',
      );

  static String get registrationAddress => Intl.message(
        'Адрес регистрации',
        desc: 'Адрес регистрации',
        name: 'BonusesI18n_registrationAddress',
      );

  static String get personalDataTitle => Intl.message(
        'Личные данные',
        desc: 'Личные данные',
        name: 'BonusesI18n_personalDataTitle',
      );

  static String get personalDataDescription => Intl.message(
        'Пожалуйста, указывайте ваши реальные данные',
        desc: 'Пожалуйста, указывайте ваши реальные данные',
        name: 'BonusesI18n_personalDataDescription',
      );

  static String get sendDataButton => Intl.message(
        'Отправить данные на проверку',
        desc: 'Отправить данные на проверку',
        name: 'BonusesI18n_sendDataButton',
      );

  static String get consentPersonalData => Intl.message(
        'Я согласен на `хранение, обработку и передачу паспортных данных`',
        desc: 'Отправить данные на проверку',
        name: 'BonusesI18n_consentPersonalData',
      );

  static String get firstPagePassportScan => Intl.message(
        'Скан первой страницы паспорта',
        desc: 'Скан первой страницы паспорта',
        name: 'BonusesI18n_firstPagePassportScan',
      );

  static String get registrationPagePassportScan => Intl.message(
        'Скан страницы паспорта с регистрацией',
        desc: 'Скан страницы паспорта с регистрацией',
        name: 'BonusesI18n_registrationPagePassportScan',
      );

  static String get fileFieldTitle => Intl.message(
        'Выберите или перетащите файл в эту область',
        desc: 'Выберите или перетащите файл в эту область',
        name: 'BonusesI18n_fileFieldTitle',
      );

  static String get fileFieldFormats => Intl.message(
        'Форматы PDF, JPG, JPEG, PNG, до 10 МБ',
        desc: 'Форматы PDF, JPG, JPEG, PNG, до 10 МБ',
        name: 'BonusesI18n_fileFieldFormats',
      );

  static String get writingOffCouponsTitle => Intl.message(
        'Подарочные сертификаты',
        desc: 'Подарочные сертификаты',
        name: 'BonusesI18n_writingOffCouponsTitle',
      );

  static String get writingOffCouponsDescription => Intl.message(
        'Покупайте сертификаты за бонусные баллы на Ozon,WB, Золотое Яблоко, М.Видео и многие другие магазины',
        desc:
            'Покупайте сертификаты за бонусные баллы на Ozon,WB, Золотое Яблоко, М.Видео и многие другие магазины',
        name: 'BonusesI18n_writingOffCouponsDescription',
      );

  static String get writingOffCardTitle => Intl.message(
        'Перевод на карту',
        desc: 'Перевод на карту',
        name: 'BonusesI18n_writingOffCardTitle',
      );

  static String get writingOffCardDescription => Intl.message(
        'Выводите бонусные баллы сразу на вашу банковскую карту и тратьте на любые покупки',
        desc:
            'Выводите бонусные баллы сразу на вашу банковскую карту и тратьте на любые покупки',
        name: 'BonusesI18n_writingOffCardDescription',
      );

  static String get writingOffCardTooltipText => Intl.message(
        'Для перевода на карту необходимо указать ваши реальные данные: ФИО, документы, удостоверяющие личность, и номер карты',
        desc:
            'Для перевода на карту необходимо указать ваши реальные данные: ФИО, документы удостоверяющие личность и номер карты',
        name: 'BonusesI18n_writingOffCardTooltipText',
      );

  static String get writingOffPhoneTitle => Intl.message(
        'Пополнение счета телефона',
        desc: 'Пополнение счета телефона',
        name: 'BonusesI18n_writingOffPhoneTitle',
      );

  static String get writingOffPhoneDescription => Intl.message(
        'Оплачивайте услуги мобильной связи при помощи бонусных баллов',
        desc: 'Оплачивайте услуги мобильной связи при помощи бонусных баллов',
        name: 'BonusesI18n_writingOffPhoneDescription',
      );

  static String userAmountIsLessAvailable(int availableAmount) => Intl.message(
        'Станет доступно от $availableAmount баллов',
        desc: 'Предупреждение, что счет пользователя меньше разрешеного',
        name: 'BonusesI18n_userAmountIsLessAvailable',
        args: [availableAmount],
      );

  static String get exchangeBonusesUnavailable => Intl.message(
        'Обмен баллов временно недоступен',
        desc: 'Обмен баллов временно недоступен',
        name: 'BonusesI18n_exchangeBonusesUnavailable',
      );

  static String get exchangeBonusesUnavailableDescription => Intl.message(
        'Ориентировочно, сервис обмена баллов будет доступен с 28.11.2024 ',
        desc:
            'Ориентировочно, сервис обмена баллов будет доступен с 28.11.2024 ',
        name: 'BonusesI18n_exchangeBonusesUnavailableDescription',
      );

  static String get maxSumYearAttention => Intl.message(
        'Превышен лимит вывода средств',
        desc: 'Превышен лимит вывода средств',
        name: 'BonusesI18n_maxSumYearAttention',
      );

  static String get maxSumYearAttentionDescription => Intl.message(
        'Вы можете вывести не более 4 000 баллов в течение календарного года',
        desc:
            'Вы можете вывести не более 4 000 баллов в течение календарного года',
        name: 'BonusesI18n_maxSumYearAttentionDescription',
      );

  static String get personalData => Intl.message(
        'Сбор, обработка, передача персональных данных',
        desc: 'Сбор, обработка, передача персональных данных',
        name: 'BonusesI18n_personalData',
      );

  static String get userAgreement => Intl.message(
        'Пользовательское соглашение',
        desc: 'Пользовательское соглашение',
        name: 'BonusesI18n_userAgreement',
      );

  static String get offerCard => Intl.message(
        'Оферта об организации и осуществлении расчетов по переводу денежных средств по номеру платежной карты',
        desc:
            'Оферта об организации и осуществлении расчетов по переводу денежных средств по номеру платежной карты',
        name: 'BonusesI18n_offerCard',
      );

  static String get offerPhone => Intl.message(
        'Оферта об организации и осуществлении расчетов по переводу денежных средств по номеру телефона',
        desc:
            'Оферта об организации и осуществлении расчетов по переводу денежных средств по номеру телефона',
        name: 'BonusesI18n_offerPhone',
      );

  static String get listOfPartners => Intl.message(
        'Перечень партнеров, участвующих в конвертации баллов',
        desc: 'Перечень партнеров, участвующих в конвертации баллов',
        name: 'BonusesI18n_listOfPartners',
      );

  static String get yourBonuses => Intl.message(
        '    Ваши баллы',
        desc: 'Description for Bonuses your bonuses',
        name: 'BonusesI18n_yourBonuses',
      );

  static String get writeOffMethods => Intl.message(
        'Способы списания',
        desc: 'Способы списания',
        name: 'BonusesI18n_writeOffMethods',
      );

  static String get termsOfUse => Intl.message(
        'Условия использования',
        desc: 'Условия использования',
        name: 'BonusesI18n_termsOfUse',
      );

  static String get frequentQuestions => Intl.message(
        'Частые вопросы',
        desc: 'Частые вопросы',
        name: 'BonusesI18n_frequentQuestions',
      );

  static String documentTitle(String key) {
    const translations = {
      'listOfPartners': 'Список партнеров',
      'offerForTransferByPaymentCardNumber':
          'Предложение о переводе по номеру карты',
      'offerTransfersToMobilePhone':
          'Предложение переводов на мобильный телефон',
      'personalDataProcessingPolicy': 'Политика обработки персональных данных',
      'userAgreement': 'Пользовательское соглашение',
    };

    return translations[key] ?? key;
  }
}
