import 'dart:async';

import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:dartz/dartz.dart';

class LoginOtpUseCase
    implements UseCase<Either<Failure, bool>, LoginOtpUseCaseParam> {
  LoginOtpUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;

  @override
  Future<Either<Failure, bool>> call(LoginOtpUseCaseParam params) async {
    return _authManager.signInWithOTP(params.code);
  }
}

class LoginOtpUseCaseParam {
  LoginOtpUseCaseParam({required this.code});

  final int code;
}
