import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:dartz/dartz.dart';

// ignore: one_member_abstracts
abstract class ProfileRepository {
  Future<Either<Failure, AuthenticatedUser>> getProfile();

  Future<Either<Failure, DictsDTO>> getDicts();

  Future<Either<Failure, AuthenticatedUser>> updateProfile(
    Map<String, dynamic> body,
  );

  Future<Either<Failure, DateTime>> sendVerifyCode({
    String? phone,
    String? email,
  });

  Future<Either<Failure, void>> checkCodeVerified(
    int code, {
    String? email,
    String? phone,
  });

  Future<Either<Failure, void>> updatePassword(Map<String, dynamic> data);

  Future<Either<Failure, void>> deleteProfile();
}
