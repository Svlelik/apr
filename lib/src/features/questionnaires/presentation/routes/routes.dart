import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> questionnairesRoutes = [
  GoRoute(
    parentNavigatorKey: rootNavigatorKey,
    name: 'Questionnaire',
    builder: (context, state) =>
        QuestionnairePage(id: state.pathParameters['id'].toString()),
    path: QuestionnairesRoutePath.item,
  ),
  // GoRoute(
  //   parentNavigatorKey: rootNavigatorKey,
  //   path: QuestionnairesRoutePath.initial,
  //   builder: (context, state) => const QuestionnairesPage(),
  //   routes: [
  //     GoRoute(
  //       parentNavigatorKey: rootNavigatorKey,
  //       builder: (context, state) =>
  //           QuestionnairePage(id: state.pathParameters['id'].toString()),
  //       path: QuestionnairesRoutePath.item,
  //     ),
  //   ],
  // ),
];
