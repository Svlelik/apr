class PhoneValidation {
  static RegExp unformattedPhoneRegExp = RegExp(r'[^\d+]');
  static String phonePlaceholder = '+7 (***) *** ** **';

  static const String patternPhoneNumber =
      r'''(^[\+]?[0-9]{1,3}?[ ]?[(]?[0-9]{2,3}?[)]?[ -]?[0-9]{3}[ -]?[0-9]{2}[ -]?[0-9]{2}$)''';
  static const String patternPhoneOperator =
      r'''(^[\+]?[0-9]{1,3}?[ ]?[(]?[9])''';
}
