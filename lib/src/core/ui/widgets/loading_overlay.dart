import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

abstract class LoadingState<T extends StatefulWidget> extends State<T> {
  final LoadingOverlay loadingOverlay = LoadingOverlay();

  @override
  void dispose() {
    loadingOverlay.hide();

    super.dispose();
  }
}

class LoadingOverlay {
  OverlayEntry? _overlay;

  void show(BuildContext context) {
    if (_overlay == null) {
      _overlay = OverlayEntry(
        builder: (context) => Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey.withAlpha(50),
          child: const Center(child: UiLoader()),
        ),
      );

      Overlay.of(context).insert(_overlay!);
    }
  }

  void hide() {
    if (_overlay != null) {
      _overlay?.remove();

      _overlay = null;
    }
  }
}
