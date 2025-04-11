// ignore_for_file: flutter_style_todos

import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/auth/data/data_sources/queries/respondent_profile.graphql.dart';

class MockAuthDataSource implements AuthDataSource {
  @override
  Future<Mutation$Auth> auth(String phone, int code) {
    // TODO: implement auth
    throw UnimplementedError();
  }

  @override
  Future<String> deleteProfile() {
    // TODO: implement deleteProfile
    throw UnimplementedError();
  }

  @override
  Future<Query$Profile> getUserInfo() {
    // TODO: implement getUserInfo
    throw UnimplementedError();
  }

  @override
  Future<AuthModel> refreshToken(String refreshToken) {
    // TODO: implement refreshToken
    throw UnimplementedError();
  }

  @override
  Future<Mutation$SendCode> sendCode(String phone) {
    // TODO: implement sendCode
    throw UnimplementedError();
  }
}
