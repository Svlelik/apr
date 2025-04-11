import 'package:apr/src/core/_core.dart';

class CheckBiometryUseCase implements UseCase<bool, CheckBiometryUseCaseParam> {
  CheckBiometryUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;

  @override
  Future<bool> call(CheckBiometryUseCaseParam params) async {
    final biometricModel = await _authManager.getBiometricSupportModel();

    if (biometricModel.status != BiometricStatus.available
        // ||        !(biometricModel.useBiometric ?? false)
        ) {
      return false;
    }

    final isSuccess = await _authManager.checkBiometry();

    if (isSuccess) {
      _authManager
        ..unlock()
        ..useBiometry = true;
    }

    return isSuccess;
  }
}

class CheckBiometryUseCaseParam {
  CheckBiometryUseCaseParam();
}
