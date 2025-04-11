// ignore_for_file: flutter_style_todos

import 'package:apr/src/core/features/auth/data/data_sources/queries/respondent_profile.graphql.dart';
import 'package:apr/src/core/features/profile/_profile.dart';

class MockProfileDataSource implements ProfileDataSource {
  @override
  Future<Query$Dicts> getDicts() {
    // TODO: implement getDicts
    throw UnimplementedError();
  }

  @override
  Future<Query$Profile> getUserInfo() {
    // TODO: implement getUserInfo
    throw UnimplementedError();
  }

  @override
  Future<Mutation$UpdateProfile$update_profile> updateProfile(
    Map<String, dynamic> body,
  ) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }

  @override
  Future<Mutation$SendCodeVerify> sendCodeVerify({
    String? phone,
    String? email,
  }) {
    // TODO: implement sendCodeVerify
    throw UnimplementedError();
  }

  @override
  Future<Mutation$CheckCodeVerified> checkCodeVerified(
    int code, {
    String? email,
    String? phone,
  }) {
    // TODO: implement checkCodeVerified
    throw UnimplementedError();
  }

  @override
  Future<Mutation$SetPasswordVerified> setPasswordVerified(
    Map<String, dynamic> body,
  ) {
    // TODO: implement setPasswordVerified
    throw UnimplementedError();
  }

  @override
  Future<Mutation$DeleteProfile> deleteProfile() {
    // TODO: implement deleteProfile
    throw UnimplementedError();
  }
}
