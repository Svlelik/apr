import 'dart:async';

import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class LoginOtpPage extends StatefulWidget {
  const LoginOtpPage({super.key});

  @override
  State<LoginOtpPage> createState() => _LoginOtpPageState();
}

class _LoginOtpPageState extends LoadingState<LoginOtpPage> {
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
    return BlocProvider<LoginOtpBloc>(
      create: (context) {
        return AuthInjection.sl<LoginOtpBloc>()
          ..add(const LoginOtpEvent.started());
      },
      child: Scaffold(
        backgroundColor: context.color.constant.white,
        appBar: const UiAppBar(),
        body: MultiBlocListener(
          listeners: [
            BlocListener<LoginOtpBloc, LoginOtpState>(
              listener: (context, state) {
                if (state.status.isFetchingInProgress) {
                  loadingOverlay.show(context);
                } else {
                  loadingOverlay.hide();
                }
              },
            ),
            BlocListener<LoginOtpBloc, LoginOtpState>(
              listenWhen: (previous, current) =>
                  previous.timer == null && current.timer != null,
              listener: (context, state) {
                setState(() {
                  duration = state.timer!.difference(DateTime.now());
                });

                startTimer();
              },
            ),
          ],
          child: BlocConsumer<LoginOtpBloc, LoginOtpState>(
            listener: (context, state) {
              if (state.status.isFetchingInProgress) {
                loadingOverlay.show(context);
              } else {
                loadingOverlay.hide();
              }
              if (state.status.isFinish) {
                loadingOverlay.hide();
                context.go(AuthRoutePath.initial);
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
                        AuthI18n.otpTitle,
                        style: context.text.headline.medium,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: Insets.xl),
                      child: Text(
                        AuthI18n.otpDescription(state.formattedPhone),
                        style: context.text.body.medium,
                      ),
                    ),
                    UiNumField(
                      formControl: context.read<LoginOtpBloc>().formControl,
                      controller: context.read<LoginOtpBloc>().controller,
                      onChanged: (control) {
                        if (control.value != null &&
                            control.value!.length == 4) {
                          context.read<LoginOtpBloc>().add(
                                LoginOtpEvent.signIn(
                                  control.value ?? '',
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
                          AuthI18n.otpTimer('$minutes:$seconds'),
                          style: context.text.body.small.copyWith(
                            color: context.color.surface.onSurfaceDim,
                          ),
                        ),
                      ),
                    if (duration.inSeconds == 0)
                      GestureDetector(
                        onTap: () => context
                            .read<LoginOtpBloc>()
                            .add(const LoginOtpEvent.requestOTP()),
                        child: Padding(
                          padding: const EdgeInsets.all(Insets.l),
                          child: Text(
                            AuthI18n.getOtpTimer,
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
                              label: AuthI18n.signInBtn,
                              onPressed: () => context.read<LoginOtpBloc>().add(
                                    LoginOtpEvent.signIn(
                                      context
                                              .read<LoginOtpBloc>()
                                              .formControl
                                              .value ??
                                          '',
                                    ),
                                  ),
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
      ),
    );
  }
}

String strDigits(int n) => n.toString().padLeft(2, '0');
