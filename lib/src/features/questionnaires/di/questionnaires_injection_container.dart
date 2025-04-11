import 'package:apr/src/core/_core.dart';
import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:get_it/get_it.dart';

class QuestionnairesInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {}

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerFactory<RemoteQuestionnairesDataSource>(
        () => buildDependency<RemoteQuestionnairesDataSource>(
          useMock: useMock,
          factoryFunc: () => GraphQLQuestionnairesDataSource(
            client: sl<GraphQlRespondentQuestionnaireRemote>(),
            logger: sl(),
          ),
          mockFactoryFunc: MockQuestionnairesDataSource.new,
        ),
      )
      ..registerFactory<LocalCacheForm>(SharedCacheForm.new);
  }

  @override
  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory<QuestionnairesRepository>(
      () => QuestionnairesRepositoryImpl(
        dataSource: sl(),
        cacheForm: sl(),
      ),
    );
  }

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerFactory(
        () => QuestionnairesBloc(repository: sl(), authManager: sl()),
      )
      ..registerFactory(QuestionnaireGeneratorBloc.new)
      ..registerFactory(
        () => QuestionnaireBloc(
          repository: sl(),
          dialogService: sl(),
        ),
      );
  }
}
