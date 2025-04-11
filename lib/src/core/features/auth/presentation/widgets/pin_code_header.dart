import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class PinCodeHeader extends StatelessWidget {
  const PinCodeHeader({
    required this.hasPinCode,
    required this.hasTemporaryCode,
    required this.hasError,
    required this.pinCodeLength,
    required this.pinFilledCodeLength,
    required this.isLoading,
    required this.status,
    this.isChanging = false,
    super.key,
    this.avatar,
    this.name,
  });

  final int pinCodeLength;
  final int pinFilledCodeLength;
  final StateStatus status;
  final bool isChanging;
  final bool hasPinCode;
  final bool hasTemporaryCode;
  final bool hasError;
  final bool isLoading;
  final String? avatar;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: Insets.l, bottom: Insets.xxl),
          child: PinCodeTitle(
            status: status,
            hasPinCode: hasPinCode,
            hasTemporaryCode: hasTemporaryCode,
            isChanging: isChanging,
            title: name,
          ),
        ),
        PinCodePoints(
          hasError: status.isFetchingFailure,
          pinCodeLength: pinCodeLength,
          pinFilledCodeLength: pinFilledCodeLength,
          isLoading: isLoading,
        ),
      ],
    );
  }
}
