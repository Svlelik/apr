import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:apr/src/features/home/presentation/_presentation.dart';
import 'package:apr/src/features/main/_main.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:talker_flutter/talker_flutter.dart';

abstract class ICoreInjection {
  static final GetIt sl = GetIt.instance;

  Future<void> initRouter() async {}

  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {}

  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async {}

  Future<void> initUseCases(EnvConfig env, {bool useMock = false}) async {}

  Future<void> initState(EnvConfig env, {bool useMock = false}) async {}

  @mustCallSuper
  Future<void> init(EnvConfig env, {bool useMock = false}) async {
    await initRouter();
    await initProviders(env, useMock: useMock);
    await initRepositories(env, useMock: useMock);
    await initUseCases(env, useMock: useMock);
    await initState(env, useMock: useMock);
  }

  T Function<T>({
    required bool useMock,
    required T Function() factoryFunc,
    required T Function() mockFactoryFunc,
  }) buildDependency = <T>({
    required bool useMock,
    required T Function() factoryFunc,
    required T Function() mockFactoryFunc,
  }) {
    if (sl<AuthManager<AuthenticatedUser>>().mocked || useMock) {
      return mockFactoryFunc();
    }

    return factoryFunc();
  };

  T Function<T>(
    bool useMock,
    EnvConfig env,
    T Function(EnvConfig) factoryFunc,
    T Function(EnvConfig) mockFactoryFunc,
  ) buildDependencyWithEnv = <T>(
    useMock,
    env,
    T Function(EnvConfig) factoryFunc,
    T Function(EnvConfig) mockFactoryFunc,
  ) {
    if (sl<AuthManager<AuthenticatedUser>>().mocked || useMock) {
      return mockFactoryFunc(env);
    }

    return factoryFunc(env);
  };
}

class CoreInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initRouter() async {
    sl.registerLazySingleton<AppAutoRouter>(() {
      final routerHelper = RouterHelper(
        authManager: sl(),
        homeLocation: HomeRoutePath.initial,
        publicPaths: [
          OnboardingRoutePath.faq,
          OnboardingRoutePath.rules,
          AuthRoutePath.initial,
          AuthRoutePath.signInFullPath,
          AuthRoutePath.pinCodeFullPath,
          AuthRoutePath.biometryFullPath,
          AuthRoutePath.accountBlocked,
          AuthRoutePath.otpFullPath,
          AuthRoutePath.support,
        ],
      );
      return AppAutoRouter(
        GoRouter(
          refreshListenable: sl<AuthManager<AuthenticatedUser>>(),
          navigatorKey: rootNavigatorKey,
          debugLogDiagnostics: true,
          //  initialLocation: routerHelper.initialLocation,
          redirect: routerHelper.redirect,
          routes: [
            ...authRoutes,
            ...mainRoutes,
          ],
        ),
      );
    });
  }

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerLazySingleton(SecureStorageService.new)
      ..registerSingleton<DialogService>(DialogService())
      ..registerSingleton<StrapiDioClient>(
        StrapiDioClient(
          EnvVariables.strapiApi,
          storage: sl(),
        ),
      );

    final AuthLink authLink = AuthLink(
      getToken: () async {
        final _authManager = GetIt.I<AuthManager<AuthenticatedUser>>();

        if (_authManager.isRefreshing) {
          return null;
        }

        final _repository =
            GetIt.I<AuthRepository<AuthModel, AuthenticatedUser>>();
        String? token = await _repository.getAccessToken();

        if (token != null) {
          final isExpired = JwtDecoder.isExpired(token);

          if (isExpired) {
            await _authManager.refreshToken();

            token = await _repository.getAccessToken();
          }

          return 'Bearer $token';
        }

        return null;
      },
    );

    sl
      ..registerFactory<GraphQLRespondentRemote>(
        () => GraphQLRespondentRemote(
          link: authLink.concat(
            HttpLink(EnvVariables.profileService.toString()),
          ),
          defaultPolicies: DefaultPolicies(
            query: Policies(
              fetch: FetchPolicy.networkOnly,
            ),
          ),
          cache: GraphQLCache(store: InMemoryStore()),
        ),
      )
      ..registerFactory<GraphQlRespondentQuestionnaireRemote>(
        () => GraphQlRespondentQuestionnaireRemote(
          link: authLink.concat(
            HttpLink(EnvVariables.questionnaire.toString()),
          ),
          defaultPolicies: DefaultPolicies(
            query: Policies(
              fetch: FetchPolicy.networkOnly,
            ),
          ),
          cache: GraphQLCache(store: InMemoryStore()),
        ),
      )
      ..registerFactory<GraphQLPointsAdm>(
        () => GraphQLPointsAdm(
          link: authLink.concat(
            HttpLink(EnvVariables.pointsService.toString()),
          ),
          defaultPolicies: DefaultPolicies(
            query: Policies(
              fetch: FetchPolicy.networkOnly,
            ),
          ),
          cache: GraphQLCache(store: InMemoryStore()),
        ),
      )
      ..registerFactory<GraphQlPointsClient>(
        () => GraphQlPointsClient(
          link: authLink.concat(
            HttpLink(EnvVariables.pointsService.toString()),
          ),
          defaultPolicies: DefaultPolicies(
            query: Policies(
              fetch: FetchPolicy.networkOnly,
            ),
          ),
          cache: GraphQLCache(store: InMemoryStore()),
        ),
      )
      ..registerFactory<GraphQlProjectsClient>(
        () => GraphQlProjectsClient(
          link: authLink.concat(
            HttpLink(EnvVariables.projects.toString()),
          ),
          defaultPolicies: DefaultPolicies(
            query: Policies(
              fetch: FetchPolicy.networkOnly,
            ),
          ),
          cache: GraphQLCache(store: InMemoryStore()),
        ),
      );
  }

  @override
  Future<void> init(EnvConfig env, {bool useMock = false}) async {
    sl
      ..registerSingleton<Talker>(
        TalkerFlutter.init(
          settings: TalkerSettings(
            /// Length of history that saving logs data
            maxHistoryItems: 100,
          ),

          /// Setup your implementation of logger
          logger: TalkerLogger(),
        ),
      )
      ..registerLazySingleton(EventBus.new);

    await super.init(env, useMock: useMock);

    await SettingsInjection().init(env, useMock: true);
  }
}
