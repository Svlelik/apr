import 'package:apr/src/core/_core.dart';
import 'package:apr/src/features/home/_home.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:get_it/get_it.dart';

class HomeInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerFactory<HomeBloc>(
        () => HomeBloc(manager: sl()),
      )
      ..registerFactory<StoriesBloc>(
        () => StoriesBloc(repository: sl()),
      );
  }

  @override
  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory<StoriesRepository>(
      () => StoriesRepositoryImpl(storiesDataSource: sl()),
    );
  }

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory<StoriesDataSource>(
      () => RestStoriesDataSource(sl<StrapiDioClient>().dio),
    );
  }
}
