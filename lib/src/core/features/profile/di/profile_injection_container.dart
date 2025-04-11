import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:get_it/get_it.dart';

class ProfileInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {}

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory<ProfileDataSource>(
      () => useMock
          ? MockProfileDataSource()
          : GraphQlProfileDataSource(client: sl<GraphQLRespondentRemote>()),
    );
  }

  @override
  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory<ProfileRepository>(() => ProfileRepositoryImpl(sl()));
  }

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerSingleton(
        ProfileBloc(
          repository: sl(),
          manager: sl(),
          dialogService: sl(),
        ),
      )
      ..registerFactory(
        () => ProfileInfoBloc(
          repository: sl(),
          manager: sl(),
          dialogService: sl(),
        ),
      )
      ..registerFactory(() => ProfileConfirmContactsBloc(repository: sl()))
      ..registerFactory(
        () => ProfileConfirmEmailBloc(
          repository: sl(),
        ),
      )
      ..registerFactory(
        () => ProfileAccountSettingsBloc(
          repository: sl(),
          dialogService: sl(),
          authManager: sl(),
        ),
      );
  }

  @override
  Future<void> init(EnvConfig env, {bool useMock = false}) async {
    await super.init(env, useMock: useMock);
  }
}
