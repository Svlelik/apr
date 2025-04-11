import 'package:apr/src/core/navigation/_navigation.dart';
import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:apr/src/features/menu/_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          MenuI18n.title,
          style: context.text.title.large.copyWith(
            color: context.color.surface.onSurface,
          ),
        ),
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          MenuItemWidget(
            onTap: () => context.goRelative(BonusesRoutePath.bonuses),
            icon: Assets.icons.coin.path,
            backgroundIconColor: context.color.primary.onPrimaryContainer,
            foregroundIconColor: Colors.white,
            child: Row(
              children: [
                Text(MenuI18n.withdraw),
                const SizedBox(width: Insets.s),
                BlocBuilder<UserPointsBloc, UserPointsState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      success: (dto, _, __) =>
                          _UiBalanceChip(amount: dto.amount),
                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ],
            ),
          ),
          MenuItemWidget(
            onTap: () {
              context.goRelative(MenuRoutePath.history);
            },
            icon: Assets.icons.chartPie.path,
            text: MenuI18n.history,
          ),
          MenuItemWidget(
            onTap: () {
              context.goRelative(
                MenuRoutePath.pollsArchive,
              );
            },
            icon: Assets.icons.folder.path,
            text: MenuI18n.archive,
          ),
          MenuItemWidget(
            onTap: () {
              context.goRelative(MenuRoutePath.rules);
            },
            icon: Assets.icons.clipboardCheck.path,
            text: MenuI18n.rules,
          ),
          MenuItemWidget(
            onTap: () {
              context.goRelative(MenuRoutePath.faq);
            },
            icon: Assets.icons.icons24.help.path,
            text: MenuI18n.faq,
          ),
        ],
      ),
    );
  }
}

class _UiBalanceChip extends StatelessWidget {
  const _UiBalanceChip({
    required this.amount,
  });

  final int amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: context.color.surface.surfaceContainerLow,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          Text(
            '$amount',
            style: context.text.title.medium,
          ),
          const SizedBox(width: 4),
          UiIcon(
            Assets.icons.icons24.bonus.path,
            color: context.color.secondary.secondary,
          ),
        ],
      ),
    );
  }
}
