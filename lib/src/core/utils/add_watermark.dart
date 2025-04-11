import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_watermark/flutter_watermark.dart';

void addWatermark(BuildContext context) {
  const _flavorTextStyle = TextStyle(
    color: Color.fromARGB(5, 0, 0, 0),
    fontSize: 240,
    decoration: TextDecoration.none,
  );

  if (!EnvVariables.space.isProd) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => DisableScreenshots().addWatermark(
        context,
        EnvVariables.space.name.toUpperCase(),
        rowCount: 1,
        columnCount: 1,
        textStyle: _flavorTextStyle,
      ),
    );
  }
}
