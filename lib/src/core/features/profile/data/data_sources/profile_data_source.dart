import 'package:apr/src/core/features/auth/data/data_sources/queries/respondent_profile.graphql.dart';

// ignore: one_member_abstracts
abstract class ProfileDataSource {
  Future<Query$Profile> getUserInfo();

  Future<Query$Dicts> getDicts();

  Future<Mutation$UpdateProfile$update_profile> updateProfile(
    Map<String, dynamic> body,
  );

  Future<Mutation$SendCodeVerify> sendCodeVerify({
    String? phone,
    String? email,
  });

  Future<Mutation$CheckCodeVerified> checkCodeVerified(
    int code, {
    String? email,
    String? phone,
  });

  Future<Mutation$SetPasswordVerified> setPasswordVerified(
    Map<String, dynamic> body,
  );

  Future<Mutation$DeleteProfile> deleteProfile();
}
