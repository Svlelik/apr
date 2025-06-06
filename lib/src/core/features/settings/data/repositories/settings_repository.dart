import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl(this._dataSource);

  final SettingsDataSource _dataSource;

  @override
  Future<Either<Failure, SettingsModel>> getSettings() async {
    try {
      final response = await _dataSource.getSettings();

      return Right(response);
    } on DioException catch (error) {
      return Left(
        SettingsFailure(
          code: error.response?.statusCode ?? 1,
          message: error.response?.data.toString() ?? error.errorMessage,
        ),
      );
    } catch (error) {
      return Left(SettingsFailure(code: 1, message: error.toString()));
    }
  }
}
