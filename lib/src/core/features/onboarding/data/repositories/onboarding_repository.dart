import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  OnboardingRepositoryImpl(this._dataSource);

  final RemoteOnboardingDataSource _dataSource;

  @override
  Future<Either<Failure, OnboardingModel>> getOnboarding() async {
    try {
      final response = await _dataSource.getOnboarding();

      return Right(response);
    } on DioException catch (error) {
      return Left(
        OnboardingFailure(
          code: error.response?.statusCode ?? 1,
          message: error.response?.data.toString() ?? error.errorMessage,
        ),
      );
    } catch (error) {
      return Left(OnboardingFailure(code: 1, message: error.toString()));
    }
  }
}
