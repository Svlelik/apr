import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:dartz/dartz.dart';

class SetLocalAuthUseCase implements UseCase<Either<Failure, bool>, bool> {
  SetLocalAuthUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;
  @override
  Future<Either<Failure, bool>> call(bool params) async {
    await _authManager.setUseLocalAuth(params);

    return const Right(true);
  }
}
