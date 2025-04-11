import 'dart:async';

import 'package:apr/firebase_options.dart';
import 'package:apr/l10n/app_localization_delegate.dart';
import 'package:apr/l10n/app_localizations.dart';
import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';
import 'package:timeago/timeago.dart' as timeago;

class App {
  factory App() {
    _singleton ??= App._internal();

    return _singleton!;
  }

  App._internal();

  static App? _singleton;

  static final Completer<void> _completer = Completer<void>();

  static Future<void> init(EnvConfig env) async {
    await _initCommon();
    await _initFirebase();
    await _initEnv(env);
    await _initDependencies(env);
    await _startApp(env);
  }

  static Future<void> _initCommon([
    List<DeviceOrientation>? orientations,
  ]) async {
    configureUrlStrategyApp();
    if (!kIsWeb) {
      await SystemChrome.setPreferredOrientations(
        orientations ??
            <DeviceOrientation>[
              DeviceOrientation.portraitUp,
              DeviceOrientation.portraitDown,
            ],
      );
    }
  }

  static Future<void> _initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  static Future<void> _initEnv(EnvConfig env) async {
    try {
      final remoteConfig = FirebaseRemoteConfig.instance;
      await remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(minutes: 1),
          minimumFetchInterval: const Duration(hours: 1),
        ),
      );
      await remoteConfig.fetchAndActivate();

      await dotenv.load(fileName: '.${env.name}.env');
    } catch (_) {}
  }

  static Future<void> _initDependencies(EnvConfig env) async {
    await configureDependencies(env);
  }

  static Future<void> _startApp(EnvConfig env) async {
    await AuthInjection.sl<AuthManager<AuthenticatedUser>>().init();

    runApp(
      AprApp(
        router: CoreInjection.sl(),
        builder: (BuildContext context, Widget? child) {
          return ReactiveFormConfig(
            validationMessages: {
              ValidationMessage.required: (error) =>
                  CoreI18n.requiredErrorMessage,
              ValidationMessage.email: (error) => CoreI18n.emailErrorMessage,
            },
            child: BlocProvider<SettingsCubit>(
              create: (context) => CoreInjection.sl(),
              child: DialogManager(
                dialogService: CoreInjection.sl(),
                child: child,
              ),
            ),
          );
        },
      ),
    );
  }

  static void onFinishSplash() {
    if (!_completer.isCompleted) {
      _completer.complete();
    }
  }
}

class AprApp extends StatelessWidget {
  const AprApp({
    required this.router,
    this.builder,
    this.child,
    super.key,
  });

  final AppAutoRouter router;

  final TransitionBuilder? builder;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DevicePreferencesBloc>(
      create: (_) => DevicePreferencesBloc(
        repository: DevicePreferencesRepositoryImlp(
          dataSource: SharedDevicePreferencesDataSource(),
        ),
      )..add(const DevicePreferencesEvent.started()),
      child: BlocBuilder<DevicePreferencesBloc, DevicePreferencesState>(
        buildWhen: (previous, current) =>
            previous.themeMode != current.themeMode ||
            previous.locale != current.locale,
        builder: (context, state) {
          if (state.locale?.countryCode == null ||
              state.locale?.countryCode == 'ru') {
            timeago.setLocaleMessages('ru', timeago.RuMessages());
          }
          const locale = Locale('ru');

          if (!state.isLoaded) {
            return const SizedBox.shrink();
          }

          //   return MaterialApp(
          //     key: ValueKey(state.locale?.languageCode),
          //     themeMode: state.themeMode,
          //     theme: createLightTheme(),
          //     darkTheme: createDarkTheme(),
          //     debugShowCheckedModeBanner: false,
          //     localizationsDelegates: const [
          //       AppLocalizationDelegate(),
          //       GlobalMaterialLocalizations.delegate,
          //       GlobalWidgetsLocalizations.delegate,
          //       GlobalCupertinoLocalizations.delegate,
          //     ],
          //     locale: locale,
          //     supportedLocales: AppLocalizations.supportedLocales,
          //     builder: builder,
          //     initialRoute: Uri.base.path,
          //     scaffoldMessengerKey: AppGlobalKeys.scaffoldMessengerKey,
          //     onGenerateRoute: (settings) {
          //       return MaterialPageRoute(
          //         settings: settings,
          //         builder: (context) => child ?? const SizedBox.shrink(),
          //       );
          //     },
          //   );
          // },

          return MaterialApp.router(
            routerConfig: router.router,
            key: ValueKey(state.locale?.languageCode),
            themeMode: state.themeMode,
            theme: createLightTheme(),
            darkTheme: createDarkTheme(),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              AppLocalizationDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: locale,
            title: 'Apr',
            scaffoldMessengerKey: AppGlobalKeys.scaffoldMessengerKey,
            supportedLocales: AppLocalizations.supportedLocales,
            builder: builder,
          );
        },
      ),
    );
  }
}
