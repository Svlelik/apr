import 'dart:convert';

import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/auth/data/data_sources/queries/mappers/respondent_profile.dart';
import 'package:apr/src/core/features/auth/data/data_sources/queries/respondent_profile.graphql.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRepositoryImpl
    implements AuthRepository<AuthModel, AuthenticatedUser> {
  AuthRepositoryImpl({
    required SecureStorageService secureStorageService,
    required AuthDataSource dataSource,
  })  : _dataSource = dataSource,
        _secureStorageService = secureStorageService;

  final AuthDataSource _dataSource;

  final SecureStorageService _secureStorageService;

  @override
  Future<bool> comparePinCode(String value) {
    return _secureStorageService.comparePinCode(value);
  }

  @override
  Future<void> deleteAccessToken() {
    return _secureStorageService.removeToken();
  }

  @override
  Future<void> deletePinCode() {
    return _secureStorageService.removePinCode();
  }

  @override
  Future<void> deleteUseBiometric() {
    return _secureStorageService.removeUseBiometric();
  }

  @override
  Future<String?> getAccessToken() {
    return _secureStorageService.getToken();
  }

  @override
  Future<bool> hasAccessToken() {
    return _secureStorageService.hasToken;
  }

  @override
  Future<bool> hasPinCode() {
    return _secureStorageService.hasPinCode;
  }

  @override
  Future<void> setAccessToken(String value) {
    return _secureStorageService.setToken(value);
  }

  @override
  Future<void> setPinCode(String value) {
    return _secureStorageService.setPinCode(value);
  }

  @override
  Future<void> setUseBiometric({required bool value}) {
    return _secureStorageService.setUseBiometric(value);
  }

  @override
  Future<void> setUseLocalAuth(bool value) {
    return _secureStorageService.setUseLocalAuth(value);
  }

  @override
  Future<bool> useLocalAuth() {
    return _secureStorageService.getUseLocalAuth();
  }

  @override
  Future<void> deleteUseLocalAuth() {
    return _secureStorageService.removeUseLocalAuth();
  }

  @override
  Future<Either<Failure, AuthModel>> signIn(String phone) async {
    // try {
    //   await _oAuth.signIn();

    //   final result = await verify();

    //   return result.fold(Left.new, (r) async {
    //     return const Right(
    //       AuthModel(
    //         accessToken: 'accessToken',
    //         refreshToken: 'refreshToken',
    //       ),
    //     );
    //   });
    // } on DioException catch (e) {
    //   return Left(
    //     AuthFailure(
    //       code: e.response?.statusCode ?? 0,
    //       message: e.errorResponseMessage,
    //     ),
    //   );
    // } catch (e) {
    return Left(AuthFailure(code: 0, message: 'e'));
    // }
  }

  @override
  Future<Either<Failure, bool>> signOut() async {
    // try {
    //   await _oAuth.signOut();

    //   await _secureStorageService.removeCurrentUser();

    //   return const Right(true);
    // } on DioException catch (e) {
    //   return Left(
    //     AuthFailure(
    //       code: e.response?.statusCode ?? 0,
    //       message: e.errorResponseMessage,
    //     ),
    //   );
    // } catch (e) {
    return Left(AuthFailure(code: 0, message: 'e'));
    // }
  }

  @override
  Future<Either<Failure, AuthenticatedUser>> verify() async {
    return getCurrentUser();
  }

  @override
  Future<Either<Failure, AuthenticatedUser>> getCurrentUser() async {
    final response = await _dataSource.getUserInfo();

    return response.profile.when(
      profile: (value) async {
        final profile = value.toEntity();

        await setCurrentUser(profile);

        return Right(profile);
      },
      returnError: (error) {
        return Left(
          HttpFailure(
            HttpCodes.unknown,
            code: -1,
            message: error.message,
          ),
        );
      },
      orElse: () {
        return Left(
          HttpFailure(
            HttpCodes.unknown,
            code: -1,
            message: 'Unknown error',
          ),
        );
      },
    );
  }

  @override
  Future<Either<Failure, void>> setCurrentUser(AuthenticatedUser user) async {
    try {
      await _secureStorageService.saveCurrentUser(jsonEncode(user));

      return const Right(null);
    } catch (e) {
      return Left(AuthFailure(code: 0, message: ''));
    }
  }

  @override
  Future<void> blocUser(DateTime value) {
    return _secureStorageService.blocUser(value);
  }

  @override
  Future<void> unBlocUser() {
    return _secureStorageService.unBlocUser();
  }

  @override
  Future<DateTime?> getBlockTime() async {
    return _secureStorageService.getBlockTime();
  }

  @override
  Future<Either<Failure, PhoneVerificationDTO>> requestOTP(String phone) async {
    try {
      final response = await _dataSource.sendCode(phone);

      return response.send_code.when(
        returnTimer: (value) {
          return Right(
            PhoneVerificationDTO(
              sessionId: '',
              timer: DateTime.parse(value.timer),
            ),
          );
        },
        returnError: (error) => Left(
          HttpFailure(
            HttpCodes.unknown,
            authError: AuthError.fromJson(error.name),
            code: -1,
            message: error.message,
          ),
        ),
        orElse: () {
          return Left(
            HttpFailure(
              HttpCodes.unknown,
              code: -1,
              message: 'Unknown error',
            ),
          );
        },
      );
    } on ServerErrorException catch (error) {
      return Left(
        HttpFailure(
          HttpCodes.unknown,
          code: -1,
          message: error.error.message ?? '',
        ),
      );
    } catch (error) {
      return Left(
        HttpFailure(
          HttpCodes.unknown,
          code: -1,
          message: error.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, AuthenticatedUser>> signInWithOTP(
    String phone,
    int code,
  ) async {
    final response = await _dataSource.auth(phone, code);

    return response.auth.when(
      returnTokens: (value) async {
        await setAccessToken(value.access_token);
        await setRefreshToken(value.refresh_token);

        return getCurrentUser();

        // final profile = value.profile.toEntity();

        // await setCurrentUser(profile);

        // return Right(profile);
      },
      // login: (value) async {
      //   await setAccessToken(value.access_token);
      //   await setRefreshToken(value.refresh_token);

      //   final profile = value.profile.toEntity();

      //   await setCurrentUser(profile);

      //   return Right(profile);
      // },
      returnError: (error) {
        return Left(
          HttpFailure(
            HttpCodes.unknown,
            code: -1,
            message: error.message,
          ),
        );
      },
      orElse: () {
        return Left(
          HttpFailure(
            HttpCodes.unknown,
            code: -1,
            message: 'Unknown error',
          ),
        );
      },
    );

    //   await setAccessToken(response.accessToken);
    //   await setRefreshToken(response.refreshToken);

    //   await setCurrentUser(response.profile!);

    //   return Right(response.profile!);
    // } on ServerErrorException catch (error) {
    //   return Left(
    //     HttpFailure(
    //       HttpCodes.unknown,
    //       code: -1,
    //       message: error.error.message ?? '',
    //     ),
    //   );
    // } catch (error) {
    //   return Left(
    //     HttpFailure(
    //       HttpCodes.unknown,
    //       code: -1,
    //       message: error.toString(),
    //     ),
    //   );
    // }
  }

  @override
  Future<void> deleteRefreshToken() {
    return _secureStorageService.deleteRefreshToken();
  }

  @override
  Future<String?> getRefreshToken() {
    return _secureStorageService.getRefreshToken();
  }

  @override
  Future<bool> hasRefreshToken() {
    return _secureStorageService.hasRefreshToken;
  }

  @override
  Future<void> setRefreshToken(String value) {
    return _secureStorageService.setRefreshToken(value);
  }

  @override
  Future<Either<Failure, void>> refreshToken() async {
    try {
      final refreshToken = await _secureStorageService.getRefreshToken();

      if (refreshToken == null) {
        throw ServerErrorException(
          error: const ServerError(typeName: 'Unauthorized'),
        );
      }

      final response = await _dataSource.refreshToken(refreshToken);

      await setAccessToken(response.accessToken);
      await setRefreshToken(response.refreshToken);

      return const Right(null);
    } on ServerErrorException catch (error) {
      return Left(
        HttpFailure(
          HttpCodes.unknown,
          code: error.error.typeName == 'Forbidden' ? -2 : -1,
          message: error.error.message ?? '',
        ),
      );
    } catch (error) {
      return Left(
        HttpFailure(
          HttpCodes.unknown,
          code: -1,
          message: error.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, String>> deleteProfile() async {
    try {
      final response = await _dataSource.deleteProfile();

      return Right(response);
    } on DioException catch (error) {
      return Left(
        AuthFailure(
          code: error.response?.statusCode ?? 1,
          message: error.response?.data.toString() ?? error.errorMessage,
        ),
      );
    } catch (error) {
      return Left(AuthFailure(code: 1, message: error.toString()));
    }
  }
}
