import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:apr/src/features/home/_home.dart';
import 'package:apr/src/features/main/_main.dart';
import 'package:apr/src/features/operations/_operations.dart';
import 'package:apr/src/features/projects/_projects.dart';
import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:get_it/get_it.dart';

class MainInjection extends ICoreInjection {
  static final GetIt sl = ICoreInjection.sl;

  @override
  Future<void> init(EnvConfig env, {bool useMock = false}) async {
    await super.init(env, useMock: useMock);

    await ProfileInjection().init(env);
    await HomeInjection().init(env);
    await OperationsInjection().init(env);
    await QuestionnairesInjection().init(env, useMock: useMock);
    await BonusesInjection().init(env);
    await ProjectsInjection().init(env);
  }

  @override
  Future<void> initState(EnvConfig env, {bool useMock = false}) async {
    sl.registerFactory<MainCubit>(
      () => buildDependency<MainCubit>(
        useMock: useMock,
        factoryFunc: () => MainCubit(false),
        mockFactoryFunc: () => MainCubit(true),
      ),
    );
  }
}
