import 'package:apr/src/core/_core.dart';
import 'package:flutter/widgets.dart';

class SubscribeAuthEventUseCase extends UseCase<void, VoidCallback> {
  SubscribeAuthEventUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;

  @override
  Future<void> call(VoidCallback params) async {
    _authManager.addListener(params);
    return;
  }
}
