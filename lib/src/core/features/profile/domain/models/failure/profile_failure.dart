import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr_sdk/apr_sdk.dart';

class ProfileFailure extends Failure {
  ProfileFailure({
    required super.code,
    required super.message,
  });

  @override
  String getLocalizedString() {
    switch (code) {
      case 500:
        return CoreI18n.internalError;
      case 404:
        return ProfileI18n.profileNotFound;
      default:
        return CoreI18n.unknownError;
    }
  }
}
