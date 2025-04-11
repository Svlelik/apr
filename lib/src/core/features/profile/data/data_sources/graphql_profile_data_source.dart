import 'package:apr/src/core/features/auth/data/data_sources/queries/respondent_profile.graphql.dart';
import 'package:apr/src/core/features/auth/data/data_sources/queries/schema.graphql.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlProfileDataSource extends BaseGraphQLProvider
    implements ProfileDataSource {
  GraphQlProfileDataSource({required super.client});

  @override
  Future<Query$Profile> getUserInfo() async {
    final result = await query(
      options: QueryOptions(
        document: documentNodeQueryProfile,
      ),
    );

    return Query$Profile.fromJson(result);
  }

  @override
  Future<Mutation$UpdateProfile$update_profile> updateProfile(
    Map<String, dynamic> body,
  ) async {
    final result = await mutate(
      options: MutationOptions(
        document: documentNodeMutationUpdateProfile,
        variables: Variables$Mutation$UpdateProfile(
          profile_input: Input$ProfileUpdate.fromJson(body),
        ).toJson(),
      ),
    );

    return Mutation$UpdateProfile.fromJson(result).update_profile;
  }

  @override
  Future<Query$Dicts> getDicts() async {
    final data = await query(
      options: QueryOptions(document: documentNodeQueryDicts),
    );

    return Query$Dicts.fromJson(data);
  }

  @override
  Future<Mutation$SendCodeVerify> sendCodeVerify({
    String? phone,
    String? email,
  }) async {
    final result = await mutate(
      options: MutationOptions(
        document: documentNodeMutationSendCodeVerify,
        variables: Variables$Mutation$SendCodeVerify(
          data: Input$UsernameInput(phone: phone, email: email),
        ).toJson(),
      ),
    );

    return Mutation$SendCodeVerify.fromJson(result);
  }

  @override
  Future<Mutation$CheckCodeVerified> checkCodeVerified(
    int code, {
    String? email,
    String? phone,
  }) async {
    final result = await mutate(
      options: MutationOptions(
        document: documentNodeMutationCheckCodeVerified,
        variables: Variables$Mutation$CheckCodeVerified(
          data: Input$CheckCodeVerifiedInput(
            code: code,
            email: email,
            phone: phone,
          ),
        ).toJson(),
      ),
    );

    return Mutation$CheckCodeVerified.fromJson(result);
  }

  @override
  Future<Mutation$SetPasswordVerified> setPasswordVerified(
    Map<String, dynamic> body,
  ) async {
    final result = await mutate(
      options: MutationOptions(
        document: documentNodeMutationSetPasswordVerified,
        variables: Variables$Mutation$SetPasswordVerified(
          data: Input$SetPasswordVerifiedInput.fromJson(body),
        ).toJson(),
      ),
    );

    return Mutation$SetPasswordVerified.fromJson(result);
  }

  @override
  Future<Mutation$DeleteProfile> deleteProfile() async {
    final result = await mutate(
      options: MutationOptions(
        document: documentNodeMutationDeleteProfile,
      ),
    );

    return Mutation$DeleteProfile.fromJson(result);
  }
}
