import 'package:apr/src/core/_core.dart';
import 'package:apr/src/features/operations/_operations.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';
import 'package:timeago/timeago.dart' as timeago;

class OperationDetailsDialog extends StatelessWidget {
  const OperationDetailsDialog({
    required this.operation,
    super.key,
  });

  final OperationEntity operation;

  @override
  Widget build(BuildContext context) {
    String createdDateAgo = '';
    final createdAt = operation.timeCreate.toLocal();
    final hoursAgo = DateTime.now().difference(createdAt).inHours;
    final createdTime = DateFormat.Hm().format(createdAt);

    if (hoursAgo < 24) {
      createdDateAgo = OperationsI18n.today;
    } else if (hoursAgo >= 24 && hoursAgo < 48) {
      createdDateAgo = OperationsI18n.yesterday;
    } else {
      createdDateAgo = timeago.format(
        createdAt,
        locale: context.read<SettingsCubit>().state.locale?.countryCode ?? 'ru',
      );
    }

    final createdDate = '$createdDateAgo, $createdTime';

    return AlertDialog(
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
        height: 270,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                child: Column(
                  children: [
                    Text(
                      createdDate,
                      style: context.text.body.small,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          operation.amountWithSign,
                          style: context.text.headline.medium,
                        ),
                        const SizedBox(width: Insets.xxs),
                        UiIcon(
                          Assets.icons.icons24.bonus.path,
                          color: context.color.primary.primary,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      OperationsI18n.operationType(
                        operation.operationType,
                      ),
                      style: context.text.body.small.copyWith(
                        color: const Color(0xFF666666),
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (operation.operationStatus !=
                        OperationStatus.finished) ...[
                      _OperationStatusWidget(status: operation.operationStatus),
                      const SizedBox(height: 20),
                    ],
                    Text(
                      OperationsI18n.operationInReason(
                        operation.reason,
                        operation.reasonUid ?? '',
                        operation.title ?? '',
                        operation.projectNameResp ?? '',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
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
    );
  }
}

class _OperationStatusWidget extends StatelessWidget {
  const _OperationStatusWidget({
    required this.status,
  });
  final OperationStatus status;

  @override
  Widget build(BuildContext context) {
    return UiTag(
      backgroundColor: _bgColor,
      content: Text(
        _statusText,
        style: context.text.body.small2.copyWith(
          color: _textColor,
          fontSize: 13,
        ),
      ),
    );
  }

  Color get _bgColor => switch (status) {
        OperationStatus.active => const Color(0xFFE7B008).withOpacity(0.1),
        OperationStatus.cancelled => const Color(0xFFFFDCDC),
        _ => Colors.white,
      };

  Color get _textColor => switch (status) {
        OperationStatus.active => const Color(0xFFED922A),
        OperationStatus.cancelled => const Color(0xFFEF4343),
        _ => Colors.white,
      };

  String get _statusText => switch (status) {
        OperationStatus.active => OperationsI18n.statusActive,
        OperationStatus.cancelled => OperationsI18n.statusCancelled,
        _ => '',
      };
}
