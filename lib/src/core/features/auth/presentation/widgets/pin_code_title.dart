import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class PinCodeTitle extends StatelessWidget {
  const PinCodeTitle({
    required this.hasPinCode,
    required this.hasTemporaryCode,
    required this.status,
    this.isChanging = false,
    super.key,
    this.title,
  });

  final StateStatus status;

  final bool hasPinCode;
  final bool hasTemporaryCode;
  final bool isChanging;

  final String? title;

  @override
  Widget build(BuildContext context) {
    final style = context.text.headline.medium.copyWith(
      color: status.isFetchingFailure
          ? context.color.error.error
          : context.color.surface.onSurface,
    );

    if (hasPinCode) {
      return Text(title ?? AuthI18n.enterPinCode, style: style);
    }

    if (hasTemporaryCode) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: Insets.s),
            child: Text(
              title ?? AuthI18n.repeatPinCode,
              style: style,
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            AuthI18n.repeatPinCodeDesc,
            style: context.text.body.medium
                .copyWith(color: context.color.surface.onSurfaceVariant),
            textAlign: TextAlign.center,
          ),
        ],
      );
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: Insets.s),
          child: Text(
            AuthI18n.settingPinCode,
            style: style,
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          AuthI18n.settingPinCodeDesc,
          style: context.text.body.medium
              .copyWith(color: context.color.surface.onSurfaceVariant),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
