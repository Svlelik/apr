// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';

import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_test/flutter_test.dart';

void main() async {
  // TestWidgetsFlutterBinding.ensureInitialized();

  // final questions = await loadQuestionsFromFile();

  // group('GeneratorQuestionnaire PageSize.xs', () {
  //   final generator = GeneratorQuestionnaire(
  //     questions: questions,
  //     currentSize: PageSize.xs,
  //   );

  //   test('.generatePages', () {
  //     // generator.generatePages();

  //     // expect(generator.pages.length, 3);
  //   });

  //   testWidgets('.getFieldByTypeCode(Number)', (WidgetTester tester) async {
  //     // final Widget field = MaterialApp(
  //     //   home: generator.getFieldByTypeCode(generator.questions.first),
  //     // );

  //     // await tester.pumpWidget(field);

  //     // expect(find.textContaining('Number'), findsOneWidget);
  //   });

  //   testWidgets('.getFieldByTypeCode(Text)', (WidgetTester tester) async {
  //     // final Widget field = MaterialApp(
  //     //   home: generator.getFieldByTypeCode(generator.questions.elementAt(1)),
  //     // );

  //     // await tester.pumpWidget(field);

  //     // expect(find.textContaining('Text'), findsOneWidget);
  //   });
  // });

  // group('GeneratorQuestionnaire PageSize.m', () {
  //   final generator = GeneratorQuestionnaire(
  //     questions: questions,
  //     currentSize: PageSize.m,
  //   );

  //   test('.generatePages', () async {
  //     //   generator.generatePages();

  //     //   expect(generator.pages.length, 2);
  //   });
  // });

  // group('GeneratorQuestionnaire PageSize.xl', () {
  //   final generator = GeneratorQuestionnaire(
  //     questions: questions,
  //     currentSize: PageSize.xl,
  //   );

  //   test('.generatePages', () async {
  //     // generator.generatePages();

  //     // expect(generator.pages.length, 1);
  //   });
  // });
}

Future<List<QuestionModel>> loadQuestionsFromFile() async {
  final str =
      await rootBundle.loadString('assets/json_for_tests/questions.json');

  return (jsonDecode(str) as List<dynamic>)
      .cast<Map<String, dynamic>>()
      .map(QuestionModel.fromJson)
      .toList();
}
