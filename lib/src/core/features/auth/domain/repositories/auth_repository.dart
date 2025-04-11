import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository<A, U> {
  Future<Either<Failure, A>> signIn(String phone);

  Future<Either<Failure, PhoneVerificationDTO>> requestOTP(String phone);

  Future<Either<Failure, AuthenticatedUser>> signInWithOTP(
    String phone,
    int code,
  );

  Future<Either<Failure, bool>> signOut();

  Future<bool> hasAccessToken();

  Future<void> setAccessToken(String value);

  Future<String?> getAccessToken();

  Future<void> deleteAccessToken();

  Future<bool> hasRefreshToken();

  Future<void> setRefreshToken(String value);

  Future<String?> getRefreshToken();

  Future<void> deleteRefreshToken();

  Future<Either<Failure, U>> verify();

  Future<void> setPinCode(String value);

  Future<bool> comparePinCode(String value);

  Future<void> deletePinCode();

  Future<bool> hasPinCode();

  Future<void> deleteUseBiometric();

  Future<void> setUseBiometric({required bool value});

  Future<void> setUseLocalAuth(bool value);

  Future<bool> useLocalAuth();

  Future<void> deleteUseLocalAuth();

  Future<Either<Failure, U>> getCurrentUser();

  Future<Either<Failure, void>> setCurrentUser(U user);

  Future<void> blocUser(DateTime value);

  Future<void> unBlocUser();

  Future<DateTime?> getBlockTime();

  Future<void> refreshToken();

  Future<Either<Failure, String>> deleteProfile();
}
