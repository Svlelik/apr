import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:get_it/get_it.dart';

class OnboardingInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {}

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    if (useMock) {
      sl.registerFactory<RemoteOnboardingDataSource>(
        MockOnboardingDataSource.new,
      );
    } else {
      sl.registerFactory<RemoteOnboardingDataSource>(
        () => RestOnboardingDataSource(
          sl<StrapiDioClient>().dio,
        ),
      );
    }
    sl
      ..registerFactory<FaqDataSource>(
        () => RestFaqDataSource(
          sl<StrapiDioClient>().dio,
        ),
      )
      ..registerFactory<RopDataSource>(
        () => RestRopDataSource(
          sl<StrapiDioClient>().dio,
        ),
      );
  }

  @override
  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerFactory<OnboardingRepository>(
        () => OnboardingRepositoryImpl(
          sl(),
        ),
      )
      ..registerFactory<FaqRepository>(
        () => FaqRepositoryImpl(
          faqDataSource: sl(),
        ),
      )
      ..registerFactory<RopRepository>(
        () => RopRepositoryImpl(
          ropDataSource: sl(),
        ),
      );
  }

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerFactory(
        () => OnboardingCubit(
          repository: sl(),
        ),
      )
      ..registerFactory(
        () => FaqCubit(
          repository: sl(),
        ),
      )
      ..registerFactory(
        () => RopCubit(
          repository: sl(),
        ),
      );
  }
}
