import 'package:apr/src/core/_core.dart';

class SetBiometryUseCase implements UseCase<bool, NoParams> {
  SetBiometryUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;

  @override
  Future<bool> call(NoParams params) async {
    await _authManager.getBiometricSupportModel();

    // if (result.status == BiometricStatus.notAvailable) {
    //   return false;
    // }

    // if (result.status == BiometricStatus.available) {
    //   // final useBio = await _dialogService.showDialog<bool>(
    //   //   child: UiConfirmDialog(title: AuthI18n.useBiometricsToLogin),
    //   // );

    //   // if (useBio ?? false) {
    //   //   await _authManager.setUseBiometry(true);
    //   //   return true;
    //   // } else {
    //   //   await _authManager.setUseBiometry(false);
    //   //   return false;
    //   // }
    // }
    return false;
  }
}
