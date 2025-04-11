import 'package:apr/src/core/_core.dart';
import 'package:dio/dio.dart';

class LogoutInterceptor extends Interceptor {
  LogoutInterceptor();

  CancelToken? cancelToken;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      cancelToken?.cancel();
      AuthInjection.sl<AuthManager<AuthenticatedUser>>().signOut(remote: false);
    }

    return super.onError(err, handler);
  }
}
