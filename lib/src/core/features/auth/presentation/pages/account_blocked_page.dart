import 'package:apr/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class AccountBlockedPage extends StatelessWidget {
  const AccountBlockedPage({
    super.key,
    this.params,
  });

  final AccountBlockedPageExtraParams? params;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.color.surface.surface,
        appBar: const UiAppBar(),
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
                    AuthI18n.accountBlokedDesc(
                      params?.phone ?? '',
                    ),
                    style: context.text.body.medium,
                    textAlign: TextAlign.center,
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
}
