import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/onboarding/presentation/pages/faq_page.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> settingsRoutes = [
  GoRoute(
    builder: (context, state) => const SettingsPage(),
    path: SettingsRoutePath.initial,
    routes: [
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: SettingsRoutePath.changePinCode,
        pageBuilder: (context, state) => RouterHelper.noTransitionPage(
          context: context,
          state: state,
          child: const ChangePinCodePage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: SettingsRoutePath.rules,
        pageBuilder: (context, state) => RouterHelper.noTransitionPage(
          context: context,
          state: state,
          child: const SettingsRulesPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: SettingsRoutePath.faq,
        pageBuilder: (context, state) => RouterHelper.noTransitionPage(
          context: context,
          state: state,
          child: const FaqPage(),
        ),
      ),
    ],
  ),
];
