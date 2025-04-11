import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class BlockPage extends StatelessWidget {
  const BlockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AuthInjection.sl<LoginBloc>()..add(const LoginEvent.started()),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: context.color.surface.surface,
            appBar: AppBar(),
            body: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(Insets.l),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: Insets.s),
                        child: Text(
                          AuthI18n.accessBlocked,
                          style: context.text.headline.medium,
                        ),
                      ),
                      Text(
                        AuthI18n.accessBlockedDesc,
                        style: context.text.body.medium,
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(Insets.l),
                        child: state.maybeMap(
                          orElse: SizedBox.shrink,
                          block: (_) => UiBlockTimer(
                            duration: _.value,
                            onFinish: () => context
                                .read<LoginBloc>()
                                .add(const LoginEvent.unBlock()),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: Insets.l),
                        child: UiIcon(
                          Assets.icons.icons148.time148.path,
                          useColor: false,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: Insets.l),
                              child: UiTonalButton(
                                onPressed: () {},
                                label: AuthI18n.supportBtn,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
