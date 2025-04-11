import 'package:apr/src/core/_core.dart';
import 'package:apr/src/features/projects/_projects.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:get_it/get_it.dart';

class ProjectsInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {}

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory<RemoteProjectsDataSource>(
      () => GraphQLProjectsDataSource(
        client: sl<GraphQlProjectsClient>(),
        logger: sl(),
      ),
    );
  }

  @override
  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory<ProjectsRepository>(
      () => ProjectsRepositoryImpl(
        dataSource: sl(),
      ),
    );
  }

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerFactory(() => ProjectsBloc(repository: sl(), manager: sl()))
      ..registerFactory(() => PollArchiveCubit(repository: sl()));
  }
}
