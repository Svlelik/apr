import 'package:intl/intl.dart';

class SupportI18n {
  static String get title => Intl.message(
        'operations title',
        desc: 'Description for Operations title',
        name: 'SupportI18n_title',
      );

  static String get operationsNotFound => Intl.message(
        'Operations not found',
        desc: 'Description for Operations not found',
        name: 'SupportI18n_operationsNotFound',
      );
}
