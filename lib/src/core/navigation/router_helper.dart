import 'dart:async';

import 'package:apr/src/core/features/auth/domain/managers/auth_manager.dart';
import 'package:apr/src/core/features/auth/domain/models/auth/user/user.entity.dart';
import 'package:apr/src/core/features/auth/presentation/_presentation.dart';
import 'package:apr/src/core/navigation/_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension RouterHelperExt on BuildContext {
  void goRelative(String location, {Object? extra}) => GoRouter.of(this).go(
        '${GoRouter.of(this).routeInformationProvider.value.uri}/$location',
        extra: extra,
      );
}

class RouterHelper {
  RouterHelper({
    required AuthManager<AuthenticatedUser> authManager,
    String? authPath,
    String? initialLocation,
    String? homeLocation,
    this.publicPaths = const [],
  })  : _authManager = authManager,
        _authPath = authPath ?? AuthRoutePath.initial,
        _initialLocation = initialLocation ?? RoutePath.initial,
        _homeLocation = homeLocation ?? RoutePath.initial;

  final AuthManager<AuthenticatedUser> _authManager;

  /// Доступные без авторизации роуты.
  final List<String> publicPaths;

  final String _authPath;

  final String _initialLocation;

  final String _homeLocation;

  static String? redirectPath;

  String get initialLocation => _initialLocation;

  FutureOr<String?> redirect(
    BuildContext context,
    GoRouterState state,
  ) {
    final isAuth = _authManager.isAuth;

    final locked = _authManager.locked;

    final inLoggingIn = state.matchedLocation.contains(AuthRoutePath.initial);

    if (!isAuth && !publicPaths.contains(state.uri.path)) {
      return AuthRoutePath.signInFullPath;
    }

    if (inLoggingIn && !locked && isAuth) {
      return state.uri.queryParameters['from'] ?? '/home';
    }

    // if (!isAuth && !inLoggingIn) {
    //   final savedLocation =
    //       state.matchedLocation == '/' ? '' : '?from=${state.matchedLocation}';
    //   return '${AuthRoutePath.signIn}$savedLocation';
    // }

    // if (isAuth && locked && !inLoggingIn) {
    //   final savedLocation =
    //       state.matchedLocation == '/' ? '' : '?from=${state.matchedLocation}';
    //   return '${AuthRoutePath.initial}$savedLocation';
    // }

    return null;
  }

  bool _isAuthPath(Uri uri) => uri.path.startsWith(_authPath);

  static Page<T> adaptivePage<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
    bool fullscreenDialog = false,
  }) {
    switch (Theme.of(context).platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return CupertinoPage<T>(
          child: child,
          fullscreenDialog: fullscreenDialog,
        );

      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return MaterialPage<T>(
          child: child,
          fullscreenDialog: fullscreenDialog,
        );
    }
  }

  static Page<T> noTransitionPage<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return NoTransitionPage<T>(child: child);
  }

  // void _jivoSetProperty(Uri uri) {
  //   if (_isAuthPath(uri) || uri.path == RoutePath.profile) {
  //     eventBus.fire(
  //       const JivoButtonStateModel(
  //         visibleButton: false,
  //       ),
  //     );
  //   }

  //   if (uri.path == RoutePath.research) {
  //     eventBus.fire(
  //       const JivoButtonStateModel(
  //         enabledCss: false,
  //         jivoEvenType: JivoEvenType.enabledCss,
  //       ),
  //     );
  //   }
  // }
}
