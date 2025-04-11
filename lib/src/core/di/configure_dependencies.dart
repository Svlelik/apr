import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:apr/src/features/main/_main.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> configureDependencies(EnvConfig env) async {
  await ExternalInjection().init(env);

  await CoreInjection().init(env);

  //feature
  await OnboardingInjection().init(env, useMock: true);

  await AuthInjection().init(env);

  await MainInjection().init(env);

  // await additionalExternalInit();

  await FeatureToggle().init();
}

Future<void> additionalExternalInit() async {
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
}
