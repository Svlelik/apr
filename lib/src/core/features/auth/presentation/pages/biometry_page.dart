import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class BiometryPage extends StatelessWidget {
  const BiometryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocalAuthBloc>(
      create: (context) {
        return AuthInjection.sl<LocalAuthBloc>()
          ..add(const LocalAuthEvent.started());
      },
      child: BlocConsumer<LocalAuthBloc, LocalAuthState>(
        listener: (context, state) {
          state.maybeWhen(
            bioSuccess: (_) {
              Navigator.of(context).popUntil(
                (route) => route.isFirst,
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: context.color.surface.surface,
            appBar: UiAppBar(
              actions: [
                UiTonalButton(
                  onPressed: () {
                    context.read<LocalAuthBloc>().add(
                          const LocalAuthEvent.authByBiometric(
                            useBiometry: false,
                          ),
                        );
                  },
                  label: AuthI18n.skipBiometry,
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: state.when(
              initial: () => const SizedBox.shrink(),
              bioSuccess: (_) => const SizedBox.shrink(),
              success: (_) => _ == null
                  ? const SizedBox.shrink()
                  : SizedBox.expand(
                      child: Padding(
                        padding: const EdgeInsets.all(Insets.l),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: Insets.s),
                              child: Text(
                                _.isFace ? AuthI18n.faceId : AuthI18n.touchId,
                                style: context.text.headline.medium,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Text(
                              _.isFace
                                  ? AuthI18n.faceIdDescription
                                  : AuthI18n.touchIdDescription,
                              style: context.text.body.medium,
                              textAlign: TextAlign.center,
                            ),
                            const Spacer(),
                            UiIcon(
                              _.isFace
                                  ? Assets.icons.icons148.faceID148.path
                                  : Assets.icons.icons148.touchID148.path,
                              useColor: false,
                            ),
                            const Spacer(),
                            SafeArea(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: UiFilledButton(
                                      onPressed: () {
                                        context.read<LocalAuthBloc>().add(
                                              const LocalAuthEvent
                                                  .authByBiometric(),
                                            );
                                      },
                                      label: AuthI18n.enableBiometry,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
              createPin: (message, confirm, length, status) =>
                  PinCodeCreateForm(
                key: UniqueKey(),
                isConfirm: confirm,
                message: message,
                pinCodeLength: length,
                status: status,
                onComplete: (pinCode) {
                  context
                      .read<LocalAuthBloc>()
                      .add(LocalAuthEvent.createPinCode(pinCode));
                },
              ),
              enterPin: (
                biometricSupportModel,
                message,
                length,
                errorCount,
                status,
              ) =>
                  PinCodeEnterForm(
                status: status,
                message: message,
                pinCodeLength: length,
                onPressedReset: () => context
                    .read<LocalAuthBloc>()
                    .add(const LocalAuthEvent.resetPinCode()),
                useBiometric:
                    biometricSupportModel.status == BiometricStatus.available &&
                        (biometricSupportModel.useBiometric ?? false),
                isFace: biometricSupportModel.isFace,
                onBiometricPressed: () {
                  context
                      .read<LocalAuthBloc>()
                      .add(const LocalAuthEvent.authByBiometric());
                },
                onComplete: (pinCode) async {
                  context
                      .read<LocalAuthBloc>()
                      .add(LocalAuthEvent.enterPinCode(pinCode));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
