import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> profileRoutes = [
  GoRoute(
    builder: (context, state) => const ProfilePage(),
    path: ProfileRoutePath.initial,
    routes: [
      ...questionnairesRoutes,
    ],
  ),
];
