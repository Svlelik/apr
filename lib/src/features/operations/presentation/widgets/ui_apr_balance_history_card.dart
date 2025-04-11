import 'package:apr/src/core/constants/app_constants.dart';
import 'package:apr/src/features/operations/_operations.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';
import 'package:shimmer/shimmer.dart';

class UiAprBalanceHistoryCard extends StatefulWidget {
  const UiAprBalanceHistoryCard({
    required this.operation,
    super.key,
  });

  final OperationEntity operation;

  @override
  State<UiAprBalanceHistoryCard> createState() =>
      _UiAprBalanceHistoryCardState();
}

class _UiAprBalanceHistoryCardState extends State<UiAprBalanceHistoryCard> {
  Future<void> _showDialog(BuildContext ctx, OperationEntity operation) =>
      showDialog(
        context: ctx,
        builder: (context) => OperationDetailsDialog(operation: operation),
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDialog(context, widget.operation);
      },
      child: Container(
        padding: const EdgeInsets.all(Insets.xl),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Insets.l),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      _Balance(operation: widget.operation),
                      const SizedBox(width: Insets.l),
                      _OperationStatusWidget(
                        status: widget.operation.operationStatus,
                        type: widget.operation.operationType,
                      ),
                    ],
                  ),
                  const SizedBox(height: Insets.m),
                  _CreatedAtWidget(createdAt: widget.operation.timeCreate),
                  const SizedBox(height: Insets.m),
                  _Info(operation: widget.operation),
                ],
              ),
            ),
            UiIcon(
              Assets.icons.icons24.arrowR.path,
              width: Insets.xl,
              height: Insets.xl,
              color: context.color.surface.outline,
            ),
          ],
        ),
      ),
    );
  }
}

class UiAprBalanceHistoryCardLoader extends StatelessWidget {
  const UiAprBalanceHistoryCardLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade200,
      child: Container(
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Insets.l),
        ),
      ),
    );
  }
}

class _OperationStatusWidget extends StatelessWidget {
  const _OperationStatusWidget({
    required this.status,
    required this.type,
  });

  final OperationStatus status;
  final OperationType type;

  @override
  Widget build(BuildContext context) {
    return type == OperationType.spending
        ? UiTag(
            backgroundColor: _bgColor,
            content: Text(
              _statusText,
              style: context.text.body.small2.copyWith(
                color: _textColor,
                fontSize: 13,
              ),
            ),
          )
        : const SizedBox.shrink();
  }

  Color get _bgColor => switch (status) {
        OperationStatus.finished => const Color(0xFFDEFCE9),
        OperationStatus.active => const Color(0xFFE7B008).withOpacity(0.1),
        OperationStatus.cancelled => const Color(0xFFFFDCDC),
      };

  Color get _textColor => switch (status) {
        OperationStatus.finished => const Color(0xFF1AC057),
        OperationStatus.active => const Color(0xFFED922A),
        OperationStatus.cancelled => const Color(0xFFEF4343),
      };

  String get _statusText => switch (status) {
        OperationStatus.finished => OperationsI18n.statusCompleted,
        OperationStatus.active => OperationsI18n.statusActive,
        OperationStatus.cancelled => OperationsI18n.statusCancelled,
      };
}

class _Info extends StatelessWidget {
  const _Info({
    required this.operation,
  });

  final OperationEntity operation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          OperationsI18n.operationType(operation.operationType),
          style: context.text.body.small.copyWith(
            color: const Color(0xFF666666),
          ),
        ),
        const SizedBox(width: Insets.xs),
        UiIcon(_sign),
        const SizedBox(width: Insets.xs),
        Text(
          OperationsI18n.operationReason(
            operation.reason,
            operation.reasonUid ?? '',
            operation.title ?? '',
          ),
          style: context.text.body.small.copyWith(
            color: const Color(0xFF666666),
          ),
        ),
      ],
    );
  }

  String get _sign => switch (operation.operationType) {
        OperationType.spending => Assets.icons.markerCircle.path,
        OperationType.charging => Assets.icons.arrowRight.path,
        OperationType.refund => Assets.icons.markerCircle.path,
      };
}

class _CreatedAtWidget extends StatelessWidget {
  const _CreatedAtWidget({
    required this.createdAt,
  });

  final DateTime createdAt;

  @override
  Widget build(BuildContext context) {
    return Text(
      AppConstants.dateFormatWithTime.format(createdAt),
      style: context.text.body.small.copyWith(
        color: context.color.surface.outline,
      ),
    );
  }
}

class _Balance extends StatefulWidget {
  const _Balance({
    required this.operation,
  });

  final OperationEntity operation;

  @override
  State<_Balance> createState() => _BalanceState();
}

class _BalanceState extends State<_Balance> {
  @override
  Widget build(BuildContext context) {
    final sign =
        widget.operation.operationType == OperationType.charging ? '+' : '-';
    final formattedAmount =
        CostNumberFormat.costFormatter.format(widget.operation.amount);

    return Row(
      children: [
        Text(
          '$sign $formattedAmount',
          style: context.text.title.large.copyWith(
            color: _balanceColor,
          ),
        ),
        const SizedBox(
          width: Insets.xs,
        ),
        UiIcon(
          Assets.icons.icons24.bonus.path,
          width: Insets.xl,
          height: Insets.xl,
          color: context.color.primary.primary,
        ),
      ],
    );
  }

  Color get _balanceColor => switch (widget.operation.operationType) {
        OperationType.spending => context.color.surface.onSurface,
        _ => context.color.primary.primary,
      };
}
