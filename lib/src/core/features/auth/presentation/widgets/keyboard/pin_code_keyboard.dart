import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class PinCodeKeyboard extends StatelessWidget {
  const PinCodeKeyboard({
    required this.useBiometric,
    super.key,
    this.onPressedNumber,
    this.onReset,
    this.onDelete,
    this.onBiometricPressed,
    this.icon,
    this.reset,
    this.delete,
  });

  final bool useBiometric;

  final void Function(String text)? onPressedNumber;
  final VoidCallback? onReset;
  final VoidCallback? onDelete;
  final VoidCallback? onBiometricPressed;
  final String? icon;
  final String? reset;
  final String? delete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.xl),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('1'),
                label: '1',
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('2'),
                label: '2',
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('3'),
                label: '3',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('4'),
                label: '4',
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('5'),
                label: '5',
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('6'),
                label: '6',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('7'),
                label: '7',
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('8'),
                label: '8',
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('9'),
                label: '9',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              KeyItem(
                onPressedNumber: onReset?.call,
                child: reset != null
                    ? Text(
                        reset!,
                        style: context.text.body.small,
                        textAlign: TextAlign.center,
                      )
                    : const SizedBox.shrink(),
              ),
              KeyItem(
                onPressedNumber: () => onPressedNumber?.call('0'),
                label: '0',
              ),
              if (!useBiometric)
                KeyItem(
                  onPressedNumber: onDelete,
                  child: Center(
                    child: UiIcon(Assets.icons.icons24.deleteBackFill.path),
                  ),
                ),
              if (useBiometric && icon != null)
                KeyItem(
                  onPressedNumber: onBiometricPressed,
                  child: UiIcon(icon!),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
