import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class QNavigation extends StatelessWidget {
  const QNavigation({
    required this.canPressedPrev,
    required this.canPressedNext,
    required this.onPressedPrev,
    required this.onPressedNext,
    required this.onSubmit,
    required this.currentPage,
    required this.pagesLength,
    super.key,
    this.isLoading = false,
  });

  final int currentPage;
  final int pagesLength;

  final bool isLoading;
  final bool canPressedPrev;
  final bool canPressedNext;
  final VoidCallback onPressedPrev;
  final VoidCallback onPressedNext;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: Insets.s,
        horizontal: Insets.l,
      ),
      decoration: BoxDecoration(
        color: context.color.surface.surface,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(Insets.xxl),
          topRight: Radius.circular(Insets.xxl),
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (canPressedPrev)
              UiFilledButton(
                onPressed: onPressedPrev,
                label: QuestionnairesI18n.prev,
                backgroundColor: context.color.surface.surfaceContainerLow,
                foregroundColor: context.color.surface.onSurfaceVariant,
              ),
            const SizedBox(width: Insets.xs),
            UiFilledButton(
              onPressed: canPressedNext
                  ? onPressedNext
                  : isLoading
                      ? null
                      : onSubmit,
              label: QuestionnairesI18n.next,
            ),
          ],
        ),
      ),
    );
  }
}


// Container(
//   child: SafeArea(
//     child: Row(
//       children: [

//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//         
//       ],
//     ),
//   ),
// ),
