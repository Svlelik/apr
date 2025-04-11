import 'package:apr/src/core/navigation/_navigation.dart';
import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> bonusesRoutes = [
  GoRoute(
    path: BonusesRoutePath.bonuses,
    pageBuilder: (context, state) => RouterHelper.noTransitionPage(
      context: context,
      state: state,
      child: const BonusesPage(),
    ),
    routes: [
      GoRoute(
        path: BonusesRoutePath.passport,
        pageBuilder: (context, state) => RouterHelper.noTransitionPage(
          context: context,
          state: state,
          child: const BonusesPassportPage(),
        ),
      ),
      GoRoute(
        path: BonusesRoutePath.card,
        pageBuilder: (context, state) => RouterHelper.noTransitionPage(
          context: context,
          state: state,
          child: const CardPage(),
        ),
      ),
      GoRoute(
        path: BonusesRoutePath.phone,
        pageBuilder: (context, state) => RouterHelper.noTransitionPage(
          context: context,
          state: state,
          child: const PhonePage(),
        ),
      ),
    ],
  ),
];
