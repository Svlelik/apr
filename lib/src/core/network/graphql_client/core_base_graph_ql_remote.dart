import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLBaseRemote extends GraphQLClient {
  GraphQLBaseRemote({
    required super.link,
    required super.cache,
    super.defaultPolicies,
  });
}
