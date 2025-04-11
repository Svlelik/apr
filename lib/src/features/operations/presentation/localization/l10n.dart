import 'package:apr/src/features/operations/_operations.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:intl/intl.dart';

class OperationsI18n {
  static String get historyPageTitle => Intl.message(
        'История операций',
        desc: 'Заголовок страницы истории операций',
        name: 'OperationsI18n_historyPageTitle',
      );

  static String get all => Intl.message(
        'Все',
        desc: 'all',
        name: 'OperationsI18n_all',
      );

  static String operationType(OperationType type) => Intl.select(
        type,
        {
          OperationType.spending: 'Списание',
          OperationType.charging: 'Начисление',
          OperationType.refund: 'Возврат',
        },
        desc: 'operationType',
        name: 'OperationsI18n_operationType',
        args: [type],
      );

  static String operationReason(
    String reason,
    String reasonUid,
    String title,
  ) =>
      Intl.select(
        reason,
        {
          'take_survey': 'Опрос: $reasonUid',
          'questionnaire': 'Опрос: $reasonUid',
          'raffle': 'Розыгрыши и др. активности',
          'gift_certificate': 'Подарочный сертификат',
          'money_transfer_card': 'Банковская карта',
          'charity': 'Благотворительность',
          'gifts': 'Подарки',
          'topping_up': 'Баланс телефона',
        },
        desc: 'operationReason',
        name: 'OperationsI18n_operationReason',
        args: [
          reason,
          reasonUid,
          title,
        ],
      );

  static String get statusActive => Intl.message(
        'В обработке',
        desc: 'В обработке',
        name: 'OperationsI18n_statusActive',
      );

  static String get statusCancelled => Intl.message(
        'Операция отклонена',
        desc: 'Операция отклонена',
        name: 'OperationsI18n_statusCancelled',
      );

  static String get statusCompleted => Intl.message(
        'Операция завершена',
        desc: 'Операция завершена',
        name: 'OperationsI18n_statusCompleted',
      );       

  static String dropdownRangeName(DropdownDateRangeOptions filter) =>
      Intl.select(
        filter,
        {
          DropdownDateRangeOptions.days: '30 дней',
          DropdownDateRangeOptions.months: '6 месяцев',
          DropdownDateRangeOptions.years: 'Год',
          DropdownDateRangeOptions.allTime: 'За всё время',
          DropdownDateRangeOptions.custom: 'Задать вручную',
        },
        desc: 'dropdownRangeName',
        name: 'OperationsI18n_dropdownRangeName',
        args: [filter],
      );

  static String get selectRangeButtonLabel => Intl.message(
        'Выбрать период',
        desc: 'selectRangeButtonLabel',
        name: 'OperationsI18n_selectRangeButtonLabel',
      );

  static String get today => Intl.message(
        'Сегодня',
        desc: 'today',
        name: 'OperationsI18n_today',
      );

  static String get yesterday => Intl.message(
        'Вчера',
        desc: 'yesterday',
        name: 'OperationsI18n_yesterday',
      );

  static String operationInReason(
    String reason,
    String reasonUid,
    String title,
    String projectNameResp,
  ) =>
      Intl.select(
        reason,
        {
          'take_survey': 'Опрос: $projectNameResp',
          'questionnaire': 'Расширенная анкета: $title',
          'raffle': 'Розыгрыши и др. активности',
          'gift_certificate': 'Подарочный сертификат',
          'money_transfer_card': 'Банковская карта',
          'charity': 'Благотворительность',
          'gifts': 'Подарки',
          'topping_up': 'Баланс телефона',
          'other': 'Error other',
        },
        desc: 'operationInReason',
        name: 'OperationsI18n_operationInReason',
        args: [
          reason,
          reasonUid,
          title,
          projectNameResp,
        ],
      );
}
