extension DateTimeExtensions on DateTime {
  static DateTime? tryParse(String? formattedString) {
    try {
      if (formattedString == '' || formattedString == null) return null;
      return DateTime.parse(formattedString);
    } on FormatException {
      return null;
    }
  }
}
