import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:dartz/dartz.dart';

class SetPinCodeUseCase implements UseCase<Either<Failure, bool>, String> {
  SetPinCodeUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;
  @override
  Future<Either<Failure, bool>> call(String params) async {
    await _authManager.setPinCode(params);

    _authManager.unlock();

    return const Right(true);
  }
}
