import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/auth/data/data_sources/queries/respondent_profile.graphql.dart';

// ignore: one_member_abstracts
abstract class AuthDataSource {
  Future<Mutation$SendCode> sendCode(String phone);

  Future<Mutation$Auth> auth(String phone, int code);

  Future<Query$Profile> getUserInfo();

  Future<AuthModel> refreshToken(String refreshToken);

  Future<String> deleteProfile();
}
