// install before npm install -g get-graphql-schema
// ignore_for_file: avoid_print

import 'package:process_run/shell.dart';

void main(List<String> arguments) async {
  final shell = Shell();

  if (arguments[0].isEmpty) {
    print('url graphql is empty\n');
    return;
  }

  try {
    await shell.run('''
      get-graphql-schema ${arguments[0]} > ./schema.graphql
''');
    print('schema.graphql');
    print('\nGeneration graphql schema finished\n');
  } catch (_) {
    print('Generation graphql schema finished with Error:\n\n$_');
  }
}
