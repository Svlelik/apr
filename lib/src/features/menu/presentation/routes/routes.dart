import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:apr/src/features/menu/_menu.dart';
import 'package:apr/src/features/operations/_operations.dart';
import 'package:apr/src/features/projects/_projects.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> menuRoutes = [
  GoRoute(
    builder: (context, state) => const MenuPage(),
    path: MenuRoutePath.initial,
    routes: [
      GoRoute(
        builder: (context, state) => const FaqPage(),
        path: MenuRoutePath.faq,
      ),
      GoRoute(
        builder: (context, state) => const RulesPage(),
        path: MenuRoutePath.rules,
      ),
      GoRoute(
        builder: (context, state) => const HistoryPage(),
        path: MenuRoutePath.history,
      ),
      GoRoute(
        path: MenuRoutePath.pollsArchive,
        builder: (context, state) => const PollArchivePage(),
      ),
      ...bonusesRoutes,
    ],
  ),
];
