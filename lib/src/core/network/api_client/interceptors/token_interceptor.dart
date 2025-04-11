import 'dart:io';

import 'package:apr/src/core/_core.dart';
import 'package:dio/dio.dart';

class TokenInterceptor implements Interceptor {
  TokenInterceptor(SecureStorageService storage) : _storage = storage;

  final SecureStorageService _storage;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final hasToken = await _storage.hasToken;

    if (hasToken) {
      final token = await _storage.getToken();

      options.headers.addAll(<String, String>{
        HttpHeaders.authorizationHeader: 'Bearer $token',
      });
    }

    return handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    return handler.next(response);
  }
}
