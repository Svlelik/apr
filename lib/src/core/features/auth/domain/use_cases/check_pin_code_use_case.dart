import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:dartz/dartz.dart';

class CheckPinCodeUseCase
    implements UseCase<Either<Failure, bool>, CheckPinCodeUseCaseParams> {
  CheckPinCodeUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;

  @override
  Future<Either<Failure, bool>> call(CheckPinCodeUseCaseParams params) async {
    final result = await _authManager.checkPinCode(params.code);

    if (result) {
      _authManager.unlock();
    } else if (params.blockIfError) {
      await _authManager.block();
    }

    return Right(result);
  }
}

class CheckPinCodeUseCaseParams {
  CheckPinCodeUseCaseParams({required this.code, this.blockIfError = false});

  final String code;
  final bool blockIfError;
}
