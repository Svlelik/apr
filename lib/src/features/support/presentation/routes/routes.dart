import 'package:apr/src/features/support/_support.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> supportRoutes = [
  GoRoute(
    builder: (context, state) => const SupportPage(),
    path: SupportRoutePath.initial,
  ),
];
