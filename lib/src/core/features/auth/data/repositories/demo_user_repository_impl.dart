import 'package:apr/src/core/_core.dart';
import 'package:collection/collection.dart';

class DemoUserRepositoryImpl extends DemoUserRepository {
  final _demoUsers = [
    {
      'phone': 'demo',
    }
  ];
  @override
  Future<bool> signIn(String phone) async {
    final result = _demoUsers.singleWhereOrNull(
      (element) => element['phone'] == phone,
    );

    return result != null;
  }
}
