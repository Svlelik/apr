import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:dartz/dartz.dart';

class CheckPinCodeFromDialogUseCase
    implements UseCase<Either<Failure, bool>, String> {
  CheckPinCodeFromDialogUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;

  @override
  Future<Either<Failure, bool>> call(String params) async {
    final result = await _authManager.checkPinCode(params);

    return Right(result);
  }
}
