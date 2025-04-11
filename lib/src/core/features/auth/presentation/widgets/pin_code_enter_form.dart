import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class PinCodeEnterForm extends StatefulWidget {
  const PinCodeEnterForm({
    required this.status,
    super.key,
    this.message,
    this.pinCodeLength = 4,
    this.useBiometric = false,
    this.onComplete,
    this.onBiometricPressed,
    this.onPressedReset,
    this.isFace = true,
    this.isError = false,
  });

  final StateStatus status;

  final String? message;

  final int pinCodeLength;

  final bool useBiometric;

  final bool isFace;

  final bool isError;

  final Future<void> Function(String)? onComplete;

  final VoidCallback? onBiometricPressed;

  final VoidCallback? onPressedReset;

  @override
  State<PinCodeEnterForm> createState() => _PinCodeEnterFormState();
}

class _PinCodeEnterFormState extends State<PinCodeEnterForm> {
  String code = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: PinCodeHeader(
            hasPinCode: true,
            status: widget.status,
            hasTemporaryCode: false,
            hasError: false,
            pinCodeLength: widget.pinCodeLength,
            pinFilledCodeLength: code.length,
            isLoading: false,
            name: widget.message,
          ),
        ),
        Expanded(
          flex: 3,
          child: PinCodeKeyboard(
            useBiometric: widget.useBiometric,
            onPressedNumber: onPressedNumber,
            onReset: onPressedReset,
            onDelete: onPressedDelete,
            onBiometricPressed: onBiometricPressed,
            reset: AuthI18n.forgotPinCode,
            delete: AuthI18n.delete,
            icon: widget.isFace
                ? Assets.icons.icons32.faceID.path
                : Assets.icons.icons32.touchID.path,
          ),
        ),
      ],
    );
  }

  Future<void> onPressedNumber(String text) async {
    if (!mounted) {
      return;
    }

    setState(() {
      code = '$code$text';
    });

    if (code.length == widget.pinCodeLength) {
      await widget.onComplete?.call(code);

      onPressedReset();
    }
  }

  void onPressedDelete() {
    if (code.isEmpty || !mounted) {
      return;
    }

    setState(() {
      code = code.substring(0, code.length - 1);
    });
  }

  void onPressedReset() {
    if (code.isEmpty) {
      widget.onPressedReset?.call();

      return;
    }

    if (!mounted) {
      return;
    }

    setState(() {
      code = '';
    });
  }

  void onBiometricPressed() {
    widget.onBiometricPressed?.call();
  }
}
