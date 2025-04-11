import 'package:intl/intl.dart';

class AppConstants {
  static String title = 'Apr';
  static int pinCodeLength = 4;
  static int pinCodeAttempts = 5;
  static DateFormat dateFormatWithTime = DateFormat('dd.MM.yy, hh:mm');
  static RegExp unformattedPhoneRegExp = RegExp(r'[^\d+]');
  static String phonePlaceholder = '+7 (***) *** ** **';
}
