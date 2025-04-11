import 'package:apr/src/core/_core.dart';
import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:apr/src/features/bonuses/features/card/presentation/state/withdraw_to_card/withdraw_to_card_bloc.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:get_it/get_it.dart';

class BonusesInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> initProviders(EnvConfig env, {bool useMock = false}) async => sl
    ..registerFactory<PointsDataSource>(
      () => GraphQlPointsDataSource(
        client: sl<GraphQlPointsClient>(),
      ),
    );

  @override
  Future<void> initRepositories(EnvConfig env, {bool useMock = false}) async =>
      sl.registerFactory<PointsRepository>(
        () => PointsRepositoryImpl(
          dataSource: sl(),
        ),
      );

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async => sl
    ..registerFactory(PassportBloc.new)
    ..registerFactory(
      () => WithdrawToCardBloc(
        pointsRepository: sl(),
      ),
    )
    ..registerFactory(
      () => UserPointsBloc(
        repository: sl(),
        eventBus: sl(),
      ),
    );
}
