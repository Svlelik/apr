import 'dart:async';

import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiBlockTimer extends StatefulWidget {
  const UiBlockTimer({
    super.key,
    this.duration = Duration.zero,
    this.onPressedRepeat,
    this.onFinish,
  });

  final Duration duration;

  final VoidCallback? onPressedRepeat;

  final VoidCallback? onFinish;

  @override
  State<UiBlockTimer> createState() => _UiBlockTimerState();
}

class _UiBlockTimerState extends State<UiBlockTimer> {
  Timer? countdownTimer;

  Duration duration = Duration.zero;

  @override
  void initState() {
    duration = widget.duration;

    startTimer();

    super.initState();
  }

  /// Timer related methods ///
  // Step 3
  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  // Step 4
  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  // Step 5
  void resetTimer() {
    stopTimer();

    setState(() => duration = widget.duration);
  }

  // Step 6
  void setCountDown() {
    const reduceSecondsBy = 1;

    setState(() {
      final seconds = duration.inSeconds - reduceSecondsBy;
      if (seconds <= 0) {
        countdownTimer!.cancel();

        widget.onFinish?.call();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  @override
  void dispose() {
    countdownTimer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hours = strDigits(duration.inHours.remainder(24));
    final minutes = strDigits(duration.inMinutes.remainder(60));
    final seconds = strDigits(duration.inSeconds.remainder(60));

    String count = '$minutes:$seconds';

    if (duration.inHours > 0) {
      count = '$hours:$count';
    }

    if (duration.inSeconds == 0) {
      count = '';
    } else {
      count = ' $count';
    }

    if (duration.inSeconds == 0) {
      return const SizedBox.shrink();
    }

    if (widget.onPressedRepeat == null) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: Insets.xs, vertical: 6),
        decoration: BoxDecoration(
          color: context.color.surface.surfaceContainerLow,
          borderRadius: BorderRadius.circular(Insets.s),
        ),
        child: Text(
          count,
          style: context.text.label.large,
        ),
      );
    }

    return FilledButton(
      onPressed: widget.onPressedRepeat,
      // disabled: duration.inSeconds > 0,
      child: Text(
        'Повторить$count',
      ),
    );
  }

  String strDigits(int n) => n.toString().padLeft(2, '0');
}
