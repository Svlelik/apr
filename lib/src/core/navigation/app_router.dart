import 'package:apr/src/core/navigation/_navigation.dart';

class AppRouter {
  AppRouter(this._router);

  final AppAutoRouter _router;

  Future<T?> push<T extends Object?>(String location, {Object? extra}) async {
    return _router.router.push(location, extra: extra);
  }

  Future<T?> pushNamed<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    return _router.router.pushNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  Future<T?> replaceNamed<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    return _router.router.replaceNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  Future<T?> replace<T extends Object?>(
    String location, {
    Object? extra,
  }) {
    return _router.router.replace(location, extra: extra);
  }

  void popUntilRoot() {
    if (_router.router.canPop()) {
      _router.router.pop();

      popUntilRoot();
    }
  }
}
