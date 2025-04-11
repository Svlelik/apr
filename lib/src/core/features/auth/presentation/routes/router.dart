import 'package:apr/src/core/navigation/_navigation.dart';
import 'package:get_it/get_it.dart';

class AuthRouter {
  Future<void> goToMain([bool shouldRemoveLast = false]) async {
    GetIt.instance<AppAutoRouter>().router.go('/home');
  }
}
