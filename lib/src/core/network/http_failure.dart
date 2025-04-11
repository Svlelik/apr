import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class HttpFailure extends Failure {
  HttpFailure(
    this.httpCode, {
    required super.code,
    required super.message,
    this.authError = AuthError.other,
  });

  final HttpCodes httpCode;
  final AuthError authError;

  @override
  String getLocalizedString() {
    return CoreI18n.unknownError;
  }
}

enum AuthError {
  @JsonValue('Blocked')
  blocked,
  other;

  static AuthError fromJson(String value) =>
      value == 'Blocked' ? AuthError.blocked : AuthError.other;
}
