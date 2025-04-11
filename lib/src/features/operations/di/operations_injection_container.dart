import 'package:apr/src/core/_core.dart';
import 'package:apr/src/features/operations/_operations.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:get_it/get_it.dart';

class OperationsInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {}

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    // sl.registerFactory<RemoteOperationsDataSources>(
    //   () => GraphQLOperationsDataSource(
    //     client: sl<GraphQlOperationsClient>(),
    //     logger: sl(),
    //   ),
    // );
  }

  @override
  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {
    // sl.registerFactory<OperationsRepository>(
    //   () => OperationsRepositoryImpl(
    //     dataSource: sl(),
    //   ),
    // );
  }

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory(
      () => HistoryBloc(
        repository: sl(),
      ),
    );
  }
}
