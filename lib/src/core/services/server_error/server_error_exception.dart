import 'package:apr/src/core/_core.dart';

class ServerErrorException implements Exception {
  ServerErrorException({required this.error});

  final ServerError error;

  @override
  String toString() {
    return error.message ?? error.toString();
  }
}
