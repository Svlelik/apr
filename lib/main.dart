import 'dart:async';

import 'package:apr/src/app.dart';
import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';

void main() async {
  await runZonedGuarded(
    () async => App.init(await Env.getCurrentEnv()),
    (exception, stackTrace) => log(exception),
  );
}
