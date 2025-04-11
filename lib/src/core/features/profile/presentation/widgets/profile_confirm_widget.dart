import 'dart:async';

import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class ProfileConfirmWidget extends StatefulWidget {
  const ProfileConfirmWidget({this.email, super.key, this.phone});

  final String? email;
  final String? phone;

  @override
  State<ProfileConfirmWidget> createState() => _ProfileConfirmWidgetState();
}

class _ProfileConfirmWidgetState extends State<ProfileConfirmWidget> {
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
    return BlocProvider<ProfileConfirmContactsBloc>(
      create: (context) => ProfileInjection.sl()
        ..add(ProfileConfirmContactsEvent.started(widget.email, widget.phone)),
      child:
          BlocConsumer<ProfileConfirmContactsBloc, ProfileConfirmContactsState>(
        // listenWhen: (previous, current) =>
        //     (previous.timer == null && current.timer != null) ||
        //     current.status.isFinish,
        listener: (context, state) {
          if (state.status.isFinish) {
            Navigator.of(context).pop(true);
          } else if (state.error != null) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(
              SnackBar(content: Text(state.error ?? '')),
            );
            Navigator.of(context).pop(false);
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

          return Dialog(
            child: SizedBox(
              width: 415,
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: Insets.s,
                          right: Insets.s,
                        ),
                        child: UiIconButton(
                          onPressed: () async {
                            final idConfirmed = await _dialogBuilder(context);
                            if (idConfirmed ?? false) {
                              context.pop();
                            }
                          },
                          icon: UiIcons.close,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 32,
                      horizontal: 40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: Insets.s),
                          child: Text(
                            widget.email != null
                                ? ProfileI18n.confirmEmailTitle
                                : ProfileI18n.confirmPhoneTitle,
                            style: context.text.headline.medium,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: Insets.xl),
                          child: Text(
                            ProfileI18n.confirmDescription(
                              widget.email ?? widget.phone ?? '',
                            ),
                            style: context.text.body.medium,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        UiNumField(
                          formControl: context
                              .read<ProfileConfirmContactsBloc>()
                              .formControl,
                          controller: context
                              .read<ProfileConfirmContactsBloc>()
                              .controller,
                          onChanged: (control) {
                            if (control.value != null &&
                                control.value!.length == 4) {
                              context.read<ProfileConfirmContactsBloc>().add(
                                    ProfileConfirmContactsEvent.checkCode(
                                      widget.email,
                                      widget.phone,
                                      control.value!,
                                    ),
                                  );
                            }
                          },
                        ),
                        if (duration.inSeconds > 0)
                          Padding(
                            padding: const EdgeInsets.all(Insets.l),
                            child: Text(
                              ProfileI18n.otpTimer('$minutes:$seconds'),
                              style: context.text.body.small.copyWith(
                                  // color: context.color.surface.onSurfaceDim,
                                  ),
                            ),
                          ),
                        if (duration.inSeconds == 0)
                          Padding(
                            padding: const EdgeInsets.all(Insets.l),
                            child: InkWell(
                              onTap: () => context
                                  .read<ProfileConfirmContactsBloc>()
                                  .add(
                                    ProfileConfirmContactsEvent.started(
                                      widget.email,
                                      widget.phone,
                                    ),
                                  ),
                              child: Text(
                                ProfileI18n.getOtpTimer,
                                style: context.text.body.smallLink.copyWith(
                                    // color: context.color.primary.primary,
                                    // decorationColor: context.color.primary.primary,
                                    ),
                              ),
                            ),
                          ),
                        UiFilledButton(
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  String strDigits(int n) => n.toString().padLeft(2, '0');

  Future<bool?> _dialogBuilder(BuildContext context) {
    return showDialog<bool?>(
      context: context,
      builder: (BuildContext context) {
        return UiConfirmDialog(
          title: ProfileI18n.confirmedModelTitle,
          description: ProfileI18n.confirmedModelDescription,
          noButtonText: ProfileI18n.no,
          yesButtonText: ProfileI18n.yes,
        );
      },
    );
  }
}
