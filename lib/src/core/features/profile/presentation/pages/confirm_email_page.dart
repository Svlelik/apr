import 'dart:async';

import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class ConfirmEmailPage extends StatefulWidget {
  const ConfirmEmailPage({required this.email, super.key});

  final String email;

  @override
  State<ConfirmEmailPage> createState() => _ConfirmEmailPageState();
}

class _ConfirmEmailPageState extends State<ConfirmEmailPage> {
  Timer? countdownTimer;

  Duration duration = Duration.zero;

  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void setCountDown() {
    if (!mounted) {
      return;
    }

    const reduceSecondsBy = 1;

    setState(() {
      final seconds = duration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileConfirmEmailBloc>(
      create: (context) => ProfileInjection.sl()
        ..add(ProfileConfirmEmailEvent.started(widget.email)),
      child: Scaffold(
        backgroundColor: context.color.constant.white,
        appBar: const UiAppBar(),
        body: BlocConsumer<ProfileConfirmEmailBloc, ProfileConfirmEmailState>(
          // listenWhen: (previous, current) =>
          //     (previous.timer == null && current.timer != null) ||
          //     current.status.isFinish,
          listener: (context, state) {
            if (state.status.isFinish) {
              Navigator.of(context).pop();
            } else if (state.error != null) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(
                SnackBar(content: Text(state.error ?? '')),
              );
            } else {
              setState(() {
                duration = state.timer!.difference(DateTime.now());
              });

              startTimer();
            }
          },
          builder: (context, state) {
            final minutes = strDigits(duration.inMinutes.remainder(60));
            final seconds = strDigits(duration.inSeconds.remainder(60));

            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Insets.l,
                vertical: Insets.s,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: Insets.s),
                    child: Text(
                      ProfileI18n.confirmEmailTitle,
                      style: context.text.headline.medium,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: Insets.xl),
                    child: Text(
                      ProfileI18n.confirmDescription(widget.email),
                      style: context.text.body.medium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  UiNumField(
                    formControl:
                        context.read<ProfileConfirmEmailBloc>().formControl,
                    controller:
                        context.read<ProfileConfirmEmailBloc>().controller,
                    onChanged: (control) {
                      if (control.value != null && control.value!.length == 4) {
                        context.read<ProfileConfirmEmailBloc>().add(
                              ProfileConfirmEmailEvent.checkCode(
                                widget.email,
                                control.value!,
                              ),
                            );
                      }
                    },
                  ),
                  const Spacer(),
                  if (duration.inSeconds > 0)
                    Padding(
                      padding: const EdgeInsets.all(Insets.l),
                      child: Text(
                        ProfileI18n.otpTimer('$minutes:$seconds'),
                        style: context.text.body.small.copyWith(
                          color: context.color.surface.onSurfaceDim,
                        ),
                      ),
                    ),
                  if (duration.inSeconds == 0)
                    GestureDetector(
                      onTap: () => context
                          .read<ProfileConfirmEmailBloc>()
                          .add(ProfileConfirmEmailEvent.started(widget.email)),
                      child: Padding(
                        padding: const EdgeInsets.all(Insets.l),
                        child: Text(
                          ProfileI18n.getOtpTimer,
                          style: context.text.body.smallLink.copyWith(
                            color: context.color.primary.primary,
                            decorationColor: context.color.primary.primary,
                          ),
                        ),
                      ),
                    ),
                  SafeArea(
                    child: Row(
                      children: [
                        Expanded(
                          child: UiFilledButton(
                            label: ProfileI18n.confirmBtn,
                            onPressed: () {
                              // context.read<LoginOtpBloc>().add(
                              //     LoginOtpEvent.signIn(
                              //       context
                              //               .read<LoginOtpBloc>()
                              //               .formControl
                              //               .value ??
                              //           '',
                              //     ),
                              //   );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  String strDigits(int n) => n.toString().padLeft(2, '0');
}
