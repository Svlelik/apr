import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';

class PinCodeCreateForm extends StatefulWidget {
  const PinCodeCreateForm({
    required this.isConfirm,
    required this.status,
    super.key,
    this.message,
    this.pinCodeLength = 4,
    this.onComplete,
  });

  final bool isConfirm;

  final String? message;

  final int pinCodeLength;

  final StateStatus status;

  final void Function(String)? onComplete;

  @override
  State<PinCodeCreateForm> createState() => _PinCodeCreateFormState();
}

class _PinCodeCreateFormState extends State<PinCodeCreateForm> {
  String code = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: PinCodeHeader(
            hasPinCode: false,
            status: widget.status,
            hasTemporaryCode: widget.isConfirm,
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
            useBiometric: false,
            onPressedNumber: onPressedNumber,
            onReset: onPressedReset,
            onDelete: onPressedDelete,
            reset: AuthI18n.reset,
            delete: AuthI18n.delete,
          ),
        ),
      ],
    );
  }

  void onPressedNumber(String text) {
    setState(() {
      code = '$code$text';
    });
    if (code.length == widget.pinCodeLength) {
      widget.onComplete?.call(code);
    }
  }

  void onPressedDelete() {
    if (code.isEmpty) {
      return;
    }

    setState(() {
      code = code.substring(0, code.length - 1);
    });
  }

  void onPressedReset() {
    setState(() {
      code = '';
    });
  }
}
