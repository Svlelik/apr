import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:dartz/dartz.dart';

// ignore: one_member_abstracts
abstract class SettingsRepository {
  Future<Either<Failure, SettingsModel>> getSettings();
}
