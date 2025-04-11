import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr/src/features/home/_home.dart';
import 'package:apr/src/features/main/_main.dart';
import 'package:apr/src/features/menu/_menu.dart';
import 'package:apr/src/features/support/_support.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> mainRoutes = [
  StatefulShellRoute.indexedStack(
    pageBuilder: (context, state, navigationShell) =>
        RouterHelper.noTransitionPage(
      context: context,
      state: state,
      child: MainPage(navigationShell: navigationShell),
    ),
    branches: [
      StatefulShellBranch(routes: homeRoutes),
      StatefulShellBranch(routes: menuRoutes),
      StatefulShellBranch(routes: profileRoutes),
      StatefulShellBranch(routes: supportRoutes),
    ],
  ),
];
