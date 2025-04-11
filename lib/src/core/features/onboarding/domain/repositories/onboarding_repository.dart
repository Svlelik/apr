import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:dartz/dartz.dart';

// ignore: one_member_abstracts
abstract class OnboardingRepository {
  Future<Either<Failure, OnboardingModel>> getOnboarding();
}
