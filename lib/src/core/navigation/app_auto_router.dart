import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class AppAutoRouter {
  AppAutoRouter(this.router);

  final GoRouter router;

  BuildContext? get context =>
      router.routerDelegate.navigatorKey.currentContext;
}
