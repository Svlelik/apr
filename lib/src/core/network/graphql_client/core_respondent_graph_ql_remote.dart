import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLRespondentRemote extends GraphQLClient {
  GraphQLRespondentRemote({
    required super.link,
    required super.cache,
    super.defaultPolicies,
  });
}
