import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> authRoutes = [
  GoRoute(
    path: AuthRoutePath.initial,
    pageBuilder: (context, state) => RouterHelper.adaptivePage(
      context: context,
      state: state,
      child: const PinCodePage(),
    ),
    routes: [
      GoRoute(
        path: AuthRoutePath.signIn,
        pageBuilder: (context, state) => RouterHelper.adaptivePage(
          context: context,
          state: state,
          child: const OnboardingPage(),
        ),
        routes: [
          GoRoute(
            path: AuthRoutePath.otp,
            pageBuilder: (context, state) => RouterHelper.adaptivePage(
              context: context,
              state: state,
              child: const LoginOtpPage(),
            ),
          ),
        ],
      ),
    ],
  ),
  GoRoute(
    path: AuthRoutePath.accountBlocked,
    parentNavigatorKey: rootNavigatorKey,
    pageBuilder: (context, state) => RouterHelper.noTransitionPage(
      context: context,
      state: state,
      child: AccountBlockedPage(
        params: state.extra as AccountBlockedPageExtraParams?,
      ),
    ),
  ),
];

class AccountBlockedPageExtraParams {
  AccountBlockedPageExtraParams({this.phone});

  final String? phone;
}
