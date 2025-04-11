import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

class AuthInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {
    sl.registerFactory(AuthRouter.new);
  }

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerLazySingleton<AuthManager<AuthenticatedUser>>(
        () => AuthManagerImpl(
          authRepository: sl(),
          biometricRepository: sl(),
          settings: AuthManagerSettings(
            useBiometric: !kIsWeb,
            useLocalAuth: true,
          ),
          demoUserRepository: DemoUserRepositoryImpl(),
        ),
      )
      ..registerFactory<AuthDataSource>(
        () => useMock
            ? MockAuthDataSource()
            : GraphQlAuthDataSource(
                client: sl<GraphQLRespondentRemote>(),
                talker: sl(),
              ),
      );
  }

  @override
  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerFactory<AuthRepository<AuthModel, AuthenticatedUser>>(
        () => AuthRepositoryImpl(
          dataSource: sl(),
          secureStorageService: sl(),
        ),
      )
      ..registerFactory<BiometricRepository>(
        () => BiometricRepositoryImpl(sl()),
      );
  }

  @override
  Future<void> initUseCases(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerFactory(() => CheckLocalAuthUseCase(sl()))
      ..registerFactory(() => CheckAuthUseCase(sl()))
      ..registerFactory(() => SetPinCodeUseCase(sl()))
      ..registerFactory(() => CheckPinCodeUseCase(sl()))
      ..registerFactory(() => CheckBiometryUseCase(sl()))
      ..registerFactory(() => GetBiometricSupportModel(sl()))
      ..registerFactory(() => SetBiometryUseCase(sl()))
      ..registerFactory(() => GetGlobalAuthSettingsUseCase(sl()))
      ..registerFactory(() => SubscribeAuthEventUseCase(sl()))
      ..registerFactory(() => SetBiometrySettingUseCase(sl()))
      ..registerFactory(() => GetAuthUseCase(sl()))
      ..registerFactory(() => CheckPinCodeFromDialogUseCase(sl()))
      ..registerFactory(() => SetLocalAuthUseCase(sl()))
      ..registerFactory(() => CheckBlockUseCase(sl()))
      ..registerFactory(() => UnBlockUseCase(sl()))
      ..registerFactory(() => ResetPinCodeUseCase(sl()))
      ..registerFactory(() => LoginOtpUseCase(sl()));
  }

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerFactory(
        () => LoginBloc(
          authManager: sl(),
          checkBlockUseCase: sl(),
          unBlockUseCase: sl(),
        ),
      )
      ..registerFactory(
        () => LoginOtpBloc(
          loginOtpUseCase: sl(),
          authManager: sl(),
        ),
      )
      ..registerFactory(
        () => LocalAuthBloc(
          authManager: sl(),
          checkLocalAuthUseCase: sl(),
          setPinCodeUseCase: sl(),
          checkPinCodeUseCase: sl(),
          setBiometryUseCase: sl(),
          checkBiometryUseCase: sl(),
          getBiometricSupportModel: sl(),
        ),
      )
      ..registerFactory(() => ChangePinCodeCubit(sl(), sl()))
      ..registerFactory(() => SupportBloc(manager: sl()));
  }
}
