import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/auth/data/data_sources/queries/mappers/respondent_profile.dart';
import 'package:apr/src/core/features/auth/data/data_sources/queries/respondent_profile.graphql.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(this._dataSource);

  final ProfileDataSource _dataSource;

  @override
  Future<Either<Failure, AuthenticatedUser>> getProfile() async {
    try {
      final response = await _dataSource.getUserInfo();

      return response.profile.when(
        profile: (value) {
          return Right(value.toEntity());
        },
        returnError: (error) {
          return Left(
            ProfileFailure(
              code: -1,
              message: error.message,
            ),
          );
        },
        orElse: () {
          return Left(
            ProfileFailure(
              code: -1,
              message: 'Unknown error in getProfile',
            ),
          );
        },
      );
    } on DioException catch (error) {
      return Left(
        ProfileFailure(
          code: error.response?.statusCode ?? 1,
          message: error.response?.data.toString() ?? error.errorMessage,
        ),
      );
    } catch (error) {
      return Left(ProfileFailure(code: 1, message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, DictsDTO>> getDicts() async {
    try {
      final response = await _dataSource.getDicts();
// response.get_dict_feds.
      return Right(
        DictsDTO(
          cities: response.get_dict_cities.maybeWhen(
            orElse: () => [],
            dictCityTypeList: (value) {
              return value.dict_city_type_list
                  .map((e) => e.toEntity())
                  .toList();
            },
          ),
          regions: response.get_dict_regions.maybeWhen(
            orElse: () => [],
            dictRegionTypeList: (value) {
              return value.dict_region_type_list
                  .map((e) => e.toEntity())
                  .toList();
            },
          ),
          feds: response.get_dict_feds.maybeWhen(
            orElse: () => [],
            dictFedTypeList: (value) {
              return value.dict_fed_type_list.map((e) => e.toEntity()).toList();
            },
          ),
          sexes: response.get_dict_sexes.maybeWhen(
            orElse: () => [],
            dictSexTypeList: (value) {
              return value.dict_sex_type_list.map((e) => e.toEntity()).toList();
            },
          ),
        ),

        //
      );
    } on DioException catch (error) {
      return Left(
        ProfileFailure(
          code: error.response?.statusCode ?? 1,
          message: error.response?.data.toString() ?? error.errorMessage,
        ),
      );
    } catch (error) {
      return Left(ProfileFailure(code: 1, message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthenticatedUser>> updateProfile(
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await _dataSource.updateProfile(body);

      return response.when(
        profile: (data) {
          return Right(data.toEntity());
        },
        returnError: (error) {
          return Left(
            ProfileFailure(
              code: 1,
              message: error.message,
            ),
          );
        },
        orElse: () {
          return Left(
            ProfileFailure(
              code: -1,
              message: 'Unknown error in updateProfile',
            ),
          );
        },
      );
    } on DioException catch (error) {
      return Left(
        ProfileFailure(
          code: error.response?.statusCode ?? 1,
          message: error.response?.data.toString() ?? error.errorMessage,
        ),
      );
    } catch (error) {
      return Left(ProfileFailure(code: 1, message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, DateTime>> sendVerifyCode({
    String? phone,
    String? email,
  }) async {
    try {
      final response =
          await _dataSource.sendCodeVerify(email: email, phone: phone);

      return response.web_send_code_verified.when(
        returnTimer: (value) {
          return Right(DateTime.parse(value.timer));
        },
        returnError: (error) {
          return Left(
            ProfileFailure(
              code: 1,
              message: error.message,
            ),
          );
        },
        orElse: () {
          return Left(
            ProfileFailure(
              code: -1,
              message: 'Unknown error in sendVerifyCode',
            ),
          );
        },
      );
    } on DioException catch (error) {
      return Left(
        ProfileFailure(
          code: error.response?.statusCode ?? 1,
          message: error.response?.data.toString() ?? error.errorMessage,
        ),
      );
    } catch (error) {
      return Left(ProfileFailure(code: 1, message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> checkCodeVerified(
    int code, {
    String? email,
    String? phone,
  }) async {
    try {
      final response =
          await _dataSource.checkCodeVerified(code, email: email, phone: phone);

      return response.check_code_verified.when(
        profile: (p0) {
          return const Right(null);
        },
        returnError: (error) {
          return Left(
            ProfileFailure(
              code: 1,
              message: error.message,
            ),
          );
        },
        orElse: () {
          return Left(
            ProfileFailure(
              code: -1,
              message: 'Unknown error in checkCodeVerified',
            ),
          );
        },
      );
    } on DioException catch (error) {
      return Left(
        ProfileFailure(
          code: error.response?.statusCode ?? 1,
          message: error.response?.data.toString() ?? error.errorMessage,
        ),
      );
    } catch (error) {
      return Left(ProfileFailure(code: 1, message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updatePassword(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await _dataSource.setPasswordVerified(data);

      return response.set_password_verified.when(
        successfully: (p0) {
          return const Right(null);
        },
        returnError: (error) {
          return Left(
            ProfileFailure(
              code: 1,
              message: error.message,
            ),
          );
        },
        orElse: () {
          return Left(
            ProfileFailure(
              code: -1,
              message: 'Unknown error in updatePassword',
            ),
          );
        },
      );
    } catch (error) {
      return Left(ProfileFailure(code: 1, message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteProfile() async {
    try {
      final response = await _dataSource.deleteProfile();

      return response.delete_profile.when(
        successfully: (p0) {
          return const Right(null);
        },
        returnError: (error) {
          return Left(
            ProfileFailure(
              code: 1,
              message: error.message,
            ),
          );
        },
        orElse: () {
          return Left(
            ProfileFailure(
              code: -1,
              message: 'Unknown error',
            ),
          );
        },
      );
    } catch (error) {
      return Left(ProfileFailure(code: 1, message: error.toString()));
    }
  }
}
