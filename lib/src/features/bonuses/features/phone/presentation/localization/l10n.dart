import 'package:intl/intl.dart';

class PhoneI18n {
  static String terms(String value) => Intl.select(
        value,
        {
          'i0':
              'Личные данные должны совпадать с вашими данными, указанными в профиле',
          'i1':
              'Вы можете пополнить счет телефона не только себе, но и своим друзьям, знакомым или членам семьи',
          'i2':
              'Изменение ФИО в профиле возможно через обращение в службу поддержки',
          'other': '',
        },
        desc: 'terms',
        name: 'PhoneI18n_terms',
        args: [value],
      );

  static String get withdrawalOfPoints => Intl.message(
        'Обмен баллов',
        desc: 'withdrawalOfPoints',
        name: 'PhoneI18n_withdrawalOfPoints',
      );

  static String get transferToPhone => Intl.message(
        'Пополнение счета телефона',
        desc: 'transferToPhone',
        name: 'PhoneI18n_transferToPhone',
      );

  static String get cardHolderDetailsTitle => Intl.message(
        'Ваши данные',
        desc: 'cardHolderDetailsTitle',
        name: 'PhoneI18n_cardHolderDetailsTitle',
      );

  static String get provideRealData => Intl.message(
        'Пожалуйста, указывайте ваши реальные данные',
        desc: 'provideRealData',
        name: 'PhoneI18n_provideRealData',
      );

  static String get phoneData => Intl.message(
        'Данные оператора сотовой связи',
        desc: 'phoneData',
        name: 'PhoneI18n_phoneData',
      );

  static String get withdrawalAmount => Intl.message(
        'Сумма обмена',
        desc: 'withdrawalAmount',
        name: 'PhoneI18n_withdrawalAmount',
      );

  static String get approvalPdn => Intl.message(
        'Я согласен с условиями `Обработки и передачи персональных данных`',
        desc: 'approvalPdn',
        name: 'PhoneI18n_approvalPdn',
      );

  static String get approvalOfferCalculationsByCard => Intl.message(
        'Я согласен  с условиями `Оферты об организации и осуществлении расчетов по переводу денежных средств по номеру телефона`',
        desc: 'approvalOfferCalculationsByCard',
        name: 'PhoneI18n_approvalOfferCalculationsByCard',
      );

  static String get approvalPartnerList => Intl.message(
        'Я согласен  с `Перечнем партнеров, участвующих в конвертации баллов`',
        desc: 'approvalPartnerList',
        name: 'PhoneI18n_approvalPartnerList',
      );

  static String get approvalListOfPartners => Intl.message(
        'Я согласен с `Перечнем партнеров, участвующих в конвертации баллов`',
        desc: 'approvalListOfPartners',
        name: 'PhoneI18n_approvalListOfPartners',
      );

  static String get exchange => Intl.message(
        'Обменять',
        desc: 'exchange',
        name: 'PhoneI18n_exchange',
      );

  static String get fioErrorStart => Intl.message(
        'Заполненные данные не совпадают с данными, указанными в профиле. Проверьте правильность введенных данных. Если вам нужно изменить ФИО в профиле, ',
        desc: 'fioErrorStart',
        name: 'PhoneI18n_fioErrorStart',
      );

  static String get fioErrorEnd => Intl.message(
        'обратитесь в поддержку',
        desc: 'fioErrorEnd',
        name: 'PhoneI18n_fioErrorEnd',
      );

  static String get requiredField => Intl.message(
        'Это поле обязательно для заполнения',
        desc: 'requiredField',
        name: 'PhoneI18n_requiredField',
      );

  static String minSumMobileError(int amount) => Intl.message(
        'Вы не можете вывести меньше положенного лимита – $amount ₽',
        desc: 'minSumMobileError',
        name: 'PhoneI18n_minSumMobileError',
        args: [amount],
      );

  static String amountError(int amount) => Intl.message(
        'Вы не можете вывести больше положенного лимита – $amount ₽',
        desc: 'amountError',
        name: 'PhoneI18n_amountError',
        args: [amount],
      );

  static String maxSumTransactionError(int amount) => Intl.message(
        'Вы не можете вывести больше $amount ₽ за раз',
        desc: 'maxSumTransactionError',
        name: 'PhoneI18n_maxSumTransactionError',
        args: [amount],
      );

  static String availableSpendAmountError(int amount, int maxSumYear) =>
      Intl.message(
        'Превышен лимит вывода средств за год - $maxSumYear ₽\nДоступный остаток - $amount ₽',
        desc: 'availableSpendAmountError',
        name: 'PhoneI18n_availableSpendAmountError',
        args: [amount, maxSumYear],
      );

  static String get confirmDialogDesc => Intl.message(
        'С вашего бонусного счета будет списано',
        desc: 'confirmDialogDesc',
        name: 'PhoneI18n_confirmDialogDesc',
      );

  static String transferToPhoneNumber(String phone) => Intl.message(
        'Перевод на номер телефона\n$phone',
        desc: 'transferToPhoneNumber',
        name: 'PhoneI18n_transferToPhoneNumber',
        args: [phone],
      );

  static String get cancel => Intl.message(
        'Отмена',
        desc: 'cancel',
        name: 'PhoneI18n_cancel',
      );

  static String get confirm => Intl.message(
        'Подтвердить',
        desc: 'confirm',
        name: 'PhoneI18n_confirm',
      );

  static String get good => Intl.message(
        'Хорошо',
        desc: 'good',
        name: 'PhoneI18n_good',
      );

  static String get transferInProcess => Intl.message(
        'Перевод в обработке',
        desc: 'transferInProccess',
        name: 'PhoneI18n_transferInProcess',
      );

  static String get transferInProcessDesc => Intl.message(
        'Ожидайте зачисления на указанную карту в течение 3-х рабочих дней',
        desc: 'transferInProccessDesc',
        name: 'PhoneI18n_transferInProcessDesc',
      );

  static String get transferInProcessDesc2Start => Intl.message(
        'Информацию по выводу баллов можно посмотреть в разделе ',
        desc: 'transferInProccessDesc2Start',
        name: 'PhoneI18n_transferInProcessDesc2Start',
      );

  static String get transferInProcessDesc2End => Intl.message(
        '`История операций`',
        desc: 'transferInProccessDesc2End',
        name: 'PhoneI18n_transferInProcessDesc2End',
      );

  static String get phone => Intl.message(
        'Телефон',
        desc: 'phone',
        name: 'PhoneI18n_phone',
      );

  static String get operator => Intl.message(
        'Оператор',
        desc: 'operator',
        name: 'PhoneI18n_operator',
      );

  static String get operatorError => Intl.message(
        'Некорректный телефонный номер (неизвестный оператор)',
        desc: 'Некорректный телефонный номер (неизвестный оператор)',
        name: 'PhoneI18n_operatorError',
      );

  static String get fieldPhoneFormatError => Intl.message(
        'Не соответствует формату +x xxx xxx-xx-xx',
        desc: 'Не соответствует формату +x xxx xxx-xx-xx',
        name: 'PhoneI18n_fieldPhoneFormatError',
      );
}
