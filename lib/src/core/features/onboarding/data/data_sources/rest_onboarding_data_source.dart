import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_onboarding_data_source.g.dart';

@RestApi()
abstract class RestOnboardingDataSource implements RemoteOnboardingDataSource {
  factory RestOnboardingDataSource(Dio dio, {String baseUrl}) =
      _RestOnboardingDataSource;

  @override
  @GET('/onboarding')
  Future<OnboardingModel> getOnboarding();
}
