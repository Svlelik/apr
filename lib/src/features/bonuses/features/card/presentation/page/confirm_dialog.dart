import 'package:apr/src/core/_core.dart';
import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:apr/src/features/bonuses/features/card/presentation/state/withdraw_to_card/withdraw_to_card_bloc.dart';
import 'package:apr/src/features/operations/_operations.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class ConfirmCardWithdrawDialog extends StatefulWidget {
  const ConfirmCardWithdrawDialog({
    required this.bloc,
    super.key,
  });

  final WithdrawToCardBloc bloc;

  @override
  State<ConfirmCardWithdrawDialog> createState() =>
      _ConfirmCardWithdrawDialogState();
}

class _ConfirmCardWithdrawDialogState extends State<ConfirmCardWithdrawDialog> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.bloc,
      child: MultiBlocListener(
        listeners: [
          _successAddSpendingStateListener(),
        ],
        child: AlertDialog(
          backgroundColor: context.color.surface.surface,
          insetPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          buttonPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
          actionsPadding: EdgeInsets.zero,
          iconPadding: EdgeInsets.zero,
          actionsOverflowButtonSpacing: 0,
          elevation: 0,
          content: SizedBox(
            width: 415,
            height: 312,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                  child: PageView(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      _ConfirmPage(bloc: widget.bloc),
                      const _SuccessPage(),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: UiIcon(Assets.icons.icons24.close.path),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BlocListener<WithdrawToCardBloc, WithdrawToCardState>
      _successAddSpendingStateListener() =>
          BlocListener<WithdrawToCardBloc, WithdrawToCardState>(
            listenWhen: (previous, current) =>
                previous.addSpendingInProcess == true,
            listener: (context, state) {
              if (state.addSpendingSuccess) {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeInOut,
                );
              }
            },
          );
}

class _ConfirmPage extends StatelessWidget {
  const _ConfirmPage({
    required this.bloc,
  });

  final WithdrawToCardBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            CardI18n.transferToCard,
            style: context.text.headline.medium,
          ),
          const SizedBox(height: 20),
          Text(CardI18n.confirmDialogDesc),
          const SizedBox(height: 20),
          BlocBuilder<WithdrawToCardBloc, WithdrawToCardState>(
            builder: (context, state) {
              final form = bloc.state.form!;

              final amount = (form
                      .getFormControl(
                        WithdrawToCardForm.withdrawalAmount,
                      )
                      ?.value ??
                  0) as int;

              return Row(
                children: [
                  Text(
                    '$amount',
                    style: context.text.headline.medium,
                  ),
                  const SizedBox(width: Insets.xxs),
                  UiIcon(
                    Assets.icons.icons24.bonus.path,
                    color: context.color.primary.primary,
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 20),
          BlocBuilder<WithdrawToCardBloc, WithdrawToCardState>(
            builder: (context, state) {
              final form = bloc.state.form!;

              final cardNumber = (form
                      .getFormControl(
                        WithdrawToCardForm.cardNumber,
                      )
                      ?.value ??
                  '0000') as String;

              final lastDigits = cardNumber.substring(cardNumber.length - 4);

              return Text(
                CardI18n.transferToCardNumber(lastDigits),
              );
            },
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              UiFilledButton(
                onPressed: () => Navigator.pop(context),
                label: CardI18n.cancel,
                backgroundColor: context.color.background.background,
                foregroundColor: const Color(0xFF666666),
                border: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Insets.l),
                ),
              ),
              const SizedBox(width: Insets.l),
              UiFilledButton(
                onPressed: () {
                  bloc.add(const WithdrawToCardEvent.addSpending());
                },
                label: CardI18n.confirm,
                border: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Insets.l),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SuccessPage extends StatelessWidget {
  const _SuccessPage();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            CardI18n.transferInProcess,
            style: context.text.headline.medium,
          ),
          const SizedBox(height: 20),
          Text(CardI18n.transferInProcessDesc),
          const SizedBox(height: 20),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: CardI18n.transferInProcessDesc2Start,
                style: context.text.body.medium,
                children: [
                  TextSpan(
                    children: RichTextUtils.parseToLinksText(
                      CardI18n.transferInProcessDesc2End,
                      [
                        () {
                          CoreInjection.sl<EventBus>().fire(
                            const HistoryEvent.getHistory(),
                          );
                          context.go(OperationsRoutePath.initialPath);
                          Navigator.pop(context, true);
                        }
                      ],
                      null,
                      const TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              UiFilledButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                label: CardI18n.good,
                border: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Insets.l),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
