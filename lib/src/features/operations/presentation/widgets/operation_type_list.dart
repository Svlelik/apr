import 'package:apr/src/features/operations/_operations.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class OperationTypeList extends StatelessWidget {
  const OperationTypeList({
    super.key,
    this.padding = const EdgeInsets.symmetric(horizontal: Insets.l),
  });

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(
      buildWhen: (previous, current) =>
          previous.operationType != current.operationType,
      builder: (context, state) => Padding(
        padding: padding,
        child: Wrap(
          spacing: Insets.xs,
          children: [
            InkWell(
              onTap: () {
                context
                    .read<HistoryBloc>()
                    .add(const HistoryEvent.setOperationType(null));
              },
              borderRadius: BorderRadius.circular(100),
              child: UiTag(
                content: Text(
                  OperationsI18n.all,
                  style: context.text.label.large.copyWith(
                    color: state.operationType == null
                        ? Colors.white
                        : context.color.surface.onSurface,
                  ),
                ),
                backgroundColor: state.operationType == null
                    ? context.color.secondary.secondary
                    : Colors.white,
              ),
            ),
            ...[
              OperationType.charging,
              OperationType.spending,
              OperationType.refund,
            ].map(
              (e) => InkWell(
                onTap: () {
                  context
                      .read<HistoryBloc>()
                      .add(HistoryEvent.setOperationType(e));
                },
                borderRadius: BorderRadius.circular(100),
                child: UiTag(
                  content: Text(
                    OperationsI18n.operationType(e),
                    style: context.text.label.large.copyWith(
                      color: state.operationType == e
                          ? Colors.white
                          : context.color.surface.onSurface,
                    ),
                  ),
                  backgroundColor: state.operationType == e
                      ? context.color.secondary.secondary
                      : Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
