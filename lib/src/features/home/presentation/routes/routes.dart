import 'package:apr/src/core/_core.dart';
import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:apr/src/features/home/_home.dart';
import 'package:apr/src/features/operations/_operations.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> homeRoutes = [
  GoRoute(
    path: HomeRoutePath.initial,
    pageBuilder: (context, state) => RouterHelper.noTransitionPage(
      context: context,
      state: state,
      child: const HomePage(),
    ),
    routes: [
      ...operationsRoutes,
      ...settingsRoutes,
      ...bonusesRoutes,
    ],
  ),
];
