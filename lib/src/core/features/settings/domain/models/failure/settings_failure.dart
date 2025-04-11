import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';

class SettingsFailure extends Failure {
  SettingsFailure({
    required super.code,
    required super.message,
  });

  @override
  String getLocalizedString() {
    switch (code) {
      case 500:
        return CoreI18n.internalError;

      default:
        return CoreI18n.unknownError;
    }
  }
}
