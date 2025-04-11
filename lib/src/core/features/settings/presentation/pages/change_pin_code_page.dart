// ignore_for_file: sized_box_shrink_expand

import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class ChangePinCodePage extends StatelessWidget {
  const ChangePinCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.surface.surface,
      appBar: const UiAppBar(),
      body: BlocProvider<ChangePinCodeCubit>(
        create: (context) => AuthInjection.sl<ChangePinCodeCubit>(),
        child: Column(
          children: [
            Expanded(
              child: BlocConsumer<ChangePinCodeCubit, ChangePinCodeState>(
                listener: (context, state) {
                  state.when(
                    initial: () {},
                    success: () {
                      Navigator.of(context).pop(true);
                    },
                    enterPin: (value, length, status) {},
                    createPin: (error, confirm, length, status) {},
                  );
                },
                builder: (context, state) {
                  return state.when(
                    initial: SizedBox.shrink,
                    success: SizedBox.shrink,
                    enterPin: (error, length, status) {
                      return Stack(
                        children: [
                          PinCodeEnterForm(
                            message: error,
                            pinCodeLength: length,
                            status: status,
                            onComplete: (value) async {
                              await context
                                  .read<ChangePinCodeCubit>()
                                  .enterPin(value, null);
                            },
                          ),
                        ],
                      );
                    },
                    createPin: (message, confirm, length, status) =>
                        PinCodeCreateForm(
                      key: UniqueKey(),
                      isConfirm: confirm,
                      status: status,
                      message: message,
                      pinCodeLength: length,
                      onComplete: (pinCode) {
                        context.read<ChangePinCodeCubit>().createPin(pinCode);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
