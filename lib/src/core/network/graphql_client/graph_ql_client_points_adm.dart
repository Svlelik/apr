import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLPointsAdm extends GraphQLClient {
  GraphQLPointsAdm({
    required super.link,
    required super.cache,
    super.defaultPolicies,
  });
}
