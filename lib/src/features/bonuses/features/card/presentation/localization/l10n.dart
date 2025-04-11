import 'package:intl/intl.dart';

class CardI18n {
  // static String get title => Intl.message(
  //       'Splash title',
  //       desc: 'Splash title',
  //       name: 'SplashI18n_title',
  //     );

  static String terms(String value) => Intl.select(
        value,
        {
          'i0':
              'Данные владельца карты должны совпадать с вашими данными, указанными в профиле',
          'i1': 'Выводить баллы можно только на свою карту',
          'i2':
              'Изменение ФИО в профиле возможно через обращение в службу поддержки',
          'i3': 'Минимальный перевод – 1000 баллов',
          'i4': 'Перевод осуществляется в течение 3-х рабочих дней',
          'other': '',
        },
        desc: 'terms',
        name: 'CardI18n_terms',
        args: [value],
      );

  static String get cardNumber => Intl.message(
        'Номер карты',
        desc: 'cardNumber',
        name: 'CardI18n_cardNumber',
      );

  static String get validityPeriod => Intl.message(
        'Номер карты',
        desc: 'validityPeriod',
        name: 'CardI18n_validityPeriod',
      );

  static String get withdrawalOfPoints => Intl.message(
        'Обмен баллов',
        desc: 'withdrawalOfPoints',
        name: 'CardI18n_withdrawalOfPoints',
      );

  static String get transferToCard => Intl.message(
        'Перевод на карту',
        desc: 'transferToCard',
        name: 'CardI18n_transferToCard',
      );

  static String get cardHolderDetailsTitle => Intl.message(
        'Ваши данные',
        desc: 'cardHolderDetailsTitle',
        name: 'CardI18n_cardHolderDetailsTitle',
      );

  static String get provideRealData => Intl.message(
        'Пожалуйста, указывайте ваши реальные данные',
        desc: 'provideRealData',
        name: 'CardI18n_provideRealData',
      );

  static String get cardData => Intl.message(
        'Данные карты',
        desc: 'cardData',
        name: 'CardI18n_cardData',
      );

  static String get withdrawalAmount => Intl.message(
        'Сумма обмена',
        desc: 'withdrawalAmount',
        name: 'CardI18n_withdrawalAmount',
      );

  static String get approvalPdn => Intl.message(
        'Я согласен с условиями `Обработки и передачи персональных данных`',
        desc: 'approvalPdn',
        name: 'CardI18n_approvalPdn',
      );

  static String get approvalOfferCalculationsByCard => Intl.message(
        'Я согласен  с условиями `Оферты об организации и осуществлении расчетов по переводу денежных средств по номеру платежной карты`',
        desc: 'approvalOfferCalculationsByCard',
        name: 'CardI18n_approvalOfferCalculationsByCard',
      );

  static String get approvalPartnerList => Intl.message(
        'Я согласен  с `Перечнем партнеров, участвующих в конвертации баллов`',
        desc: 'approvalPartnerList',
        name: 'CardI18n_approvalPartnerList',
      );

  static String get approvalListOfPartners => Intl.message(
        'Я согласен с `Перечнем партнеров, участвующих в конвертации баллов`',
        desc: 'approvalListOfPartners',
        name: 'CardI18n_approvalListOfPartners',
      );

  static String get exchange => Intl.message(
        'Обменять',
        desc: 'exchange',
        name: 'CardI18n_exchange',
      );

  static String get fioErrorStart => Intl.message(
        'Заполненные данные не совпадают с данными, указанными в профиле. Проверьте правильность введенных данных. Если вам нужно изменить ФИО в профиле, ',
        desc: 'fioErrorStart',
        name: 'CardI18n_fioErrorStart',
      );

  static String get fioErrorEnd => Intl.message(
        'обратитесь в поддержку',
        desc: 'fioErrorEnd',
        name: 'CardI18n_fioErrorEnd',
      );

  static String get requiredField => Intl.message(
        'Это поле обязательно для заполнения',
        desc: 'requiredField',
        name: 'CardI18n_requiredField',
      );

  static String get incorrectCreditCardFormatError => Intl.message(
        'Неверный формат',
        desc: 'incorrectCreditCardFormatError',
        name: 'CardI18n_incorrectCreditCardFormatError',
      );

  static String minSumCardError(int amount) => Intl.message(
        'Вы не можете вывести меньше положенного лимита – $amount ₽',
        desc: 'minSumCardError',
        name: 'CardI18n_minSumCardError',
        args: [amount],
      );

  static String amountError(int amount) => Intl.message(
        'Вы не можете вывести больше положенного лимита – $amount ₽',
        desc: 'amountError',
        name: 'CardI18n_amountError',
        args: [amount],
      );

  static String maxSumTransactionError(int amount) => Intl.message(
        'Вы не можете вывести больше $amount ₽ за раз',
        desc: 'maxSumTransactionError',
        name: 'CardI18n_maxSumTransactionError',
        args: [amount],
      );

  static String availableSpendAmountError(int amount, int maxSumYear) =>
      Intl.message(
        'Превышен лимит вывода средств за год - $maxSumYear ₽\nДоступный остаток - $amount ₽',
        desc: 'availableSpendAmountError',
        name: 'CardI18n_availableSpendAmountError',
        args: [amount, maxSumYear],
      );

  static String get confirmDialogDesc => Intl.message(
        'С вашего бонусного счета будет списано',
        desc: 'confirmDialogDesc',
        name: 'CardI18n_confirmDialogDesc',
      );

  static String transferToCardNumber(String lastDigits) => Intl.message(
        'Перевод на карту **** **** **** $lastDigits',
        desc: 'transferToCardNumber',
        name: 'CardI18n_transferToCardNumber',
        args: [lastDigits],
      );

  static String get cancel => Intl.message(
        'Отмена',
        desc: 'cancel',
        name: 'CardI18n_cancel',
      );

  static String get confirm => Intl.message(
        'Подтвердить',
        desc: 'confirm',
        name: 'CardI18n_confirm',
      );

  static String get good => Intl.message(
        'Хорошо',
        desc: 'good',
        name: 'CardI18n_good',
      );

  static String get transferInProcess => Intl.message(
        'Перевод в обработке',
        desc: 'transferInProccess',
        name: 'CardI18n_transferInProcess',
      );

  static String get transferInProcessDesc => Intl.message(
        'Ожидайте зачисления на указанную карту в течение 3-х рабочих дней',
        desc: 'transferInProccessDesc',
        name: 'CardI18n_transferInProcessDesc',
      );

  static String get transferInProcessDesc2Start => Intl.message(
        'Информацию по выводу баллов можно посмотреть в разделе ',
        desc: 'transferInProccessDesc2Start',
        name: 'CardI18n_transferInProcessDesc2Start',
      );

  static String get transferInProcessDesc2End => Intl.message(
        '`История операций`',
        desc: 'transferInProccessDesc2End',
        name: 'CardI18n_transferInProcessDesc2End',
      );
}
