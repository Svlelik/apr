import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:dartz/dartz.dart';

class CheckAuthUseCase
    implements UseCase<Either<Failure, bool>, CheckAuthUseCaseParam> {
  CheckAuthUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;

  @override
  Future<Either<Failure, bool>> call(CheckAuthUseCaseParam params) async {
    final isAuth = _authManager.isAuth;

    return Right(isAuth);
  }
}

class CheckAuthUseCaseParam {
  CheckAuthUseCaseParam();
}
