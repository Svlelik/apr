import 'package:apr/src/features/operations/_operations.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> operationsRoutes = [
  GoRoute(
    builder: (context, state) => const OperationsPage(),
    path: OperationsRoutePath.initial,
  ),
];
