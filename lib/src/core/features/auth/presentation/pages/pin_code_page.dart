import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class PinCodePage extends StatelessWidget {
  const PinCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocalAuthBloc>(
      create: (context) {
        return AuthInjection.sl<LocalAuthBloc>()
          ..add(const LocalAuthEvent.started());
      },
      child: Scaffold(
        backgroundColor: context.color.surface.surface,
        appBar: const UiAppBar(),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: BlocConsumer<LocalAuthBloc, LocalAuthState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      success: (biometrySupport) {
                        if (biometrySupport?.status ==
                            BiometricStatus.notAvailable) {
                          Navigator.of(context).popUntil(
                            (route) => route.isFirst,
                          );
                        } else {
                          Navigator.of(context).push(
                            MaterialPageRoute<dynamic>(
                              builder: (context) => const BiometryPage(),
                            ),
                          );
                        }
                      },
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    return state.when(
                      initial: () => const SizedBox.shrink(),
                      success: (_) => const SizedBox.shrink(),
                      bioSuccess: (_) => const SizedBox.shrink(),
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
                        useBiometric: biometricSupportModel.status ==
                                BiometricStatus.available &&
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
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
