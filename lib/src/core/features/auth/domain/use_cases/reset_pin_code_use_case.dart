import 'package:apr/src/core/_core.dart';

class ResetPinCodeUseCase extends UseCase<void, NoParams> {
  ResetPinCodeUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;
  @override
  Future<void> call(NoParams params) {
    return _authManager.resetPinCode();
  }
}
