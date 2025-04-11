import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:apr_sdk/apr_sdk.dart';

class OnboardingFailure extends Failure {
  OnboardingFailure({
    required super.code,
    required super.message,
  });

  @override
  String getLocalizedString() {
    switch (code) {
      case 500:
        return CoreI18n.internalError;
      case 404:
        return OnboardingI18n.onboardingNotFound;
      default:
        return CoreI18n.unknownError;
    }
  }
}
