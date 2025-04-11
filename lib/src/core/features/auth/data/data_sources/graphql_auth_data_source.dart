import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/auth/data/data_sources/queries/respondent_profile.graphql.dart';
import 'package:apr/src/core/features/auth/data/data_sources/queries/schema.graphql.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:talker/talker.dart';

class GraphQlAuthDataSource extends BaseGraphQLProvider
    implements AuthDataSource {
  GraphQlAuthDataSource({
    required Talker talker,
    required super.client,
  }) : _talker = talker;

  final Talker _talker;

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
  Future<Mutation$SendCode> sendCode(String phone) async {
    final result = await mutate(
      options: MutationOptions(
        document: documentNodeMutationSendCode,
        variables: Variables$Mutation$SendCode(
          login_input: Input$LoginInput(
            phone: phone.replaceAll(RegExp('[() -]'), ''),
            is_approval_pdn: true,
            is_approval_participation: true,
          ),
        ).toJson(),
      ),
    );

    return Mutation$SendCode.fromJson(result);
  }

  @override
  Future<Mutation$Auth> auth(String phone, int code) async {
    final result = await mutate(
      options: MutationOptions(
        document: documentNodeMutationAuth,
        variables: Variables$Mutation$Auth(
          data: Input$VerifyCodeInput(phone: phone, code: code),
        ).toJson(),
      ),
    );

    return Mutation$Auth.fromJson(result);
  }

  @override
  Future<AuthModel> refreshToken(String refreshToken) async {
    final data = await getData<Map<String, dynamic>>(
      path: AuthQueries.refreshTokenPath,
      query: AuthQueries.refreshToken,
      variables: {
        'refresh_token': refreshToken,
      },
    );

    final error = ServerError.fromJson(data);

    if (error.hasError) {
      throw ServerErrorException(error: error);
    }

    return AuthModel.fromJson(data);
  }

  @override
  Future<String> deleteProfile() async {
    final result = await client
        .mutate(MutationOptions(document: gql(ProfileQueries.deleteProfile)));

    if (result.hasException) {
      throw result.exception!;
    }

    final data = getDataFromPath(result.data, ProfileQueries.deleteProfilePath);
    final error = ServerError.fromJson(data);

    if (error.hasError) {
      throw ServerErrorException(error: error);
    }

    // ignore: avoid_dynamic_calls
    return data['message'].toString();
  }
}
