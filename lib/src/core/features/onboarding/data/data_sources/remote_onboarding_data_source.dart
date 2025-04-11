import 'package:apr/src/core/features/onboarding/_onboarding.dart';

// ignore: one_member_abstracts
abstract class RemoteOnboardingDataSource {
  Future<OnboardingModel> getOnboarding();
}
