import 'package:apr/src/core/features/onboarding/_onboarding.dart';

class MockOnboardingDataSource implements RemoteOnboardingDataSource {
  @override
  Future<OnboardingModel> getOnboarding() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    return const OnboardingModel(title: 'New Onboarding');
  }
}
