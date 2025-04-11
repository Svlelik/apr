// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:apr/src/features/operations/_operations.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiDropDownDateRangeMobile extends StatefulWidget {
  const UiDropDownDateRangeMobile({
    required this.onChanged,
    this.padding = const EdgeInsets.symmetric(horizontal: Insets.l),
    super.key,
  });

  final void Function(DateTimeRange? range)? onChanged;
  final EdgeInsets padding;

  @override
  State<UiDropDownDateRangeMobile> createState() =>
      _UiDropDownDateRangeMobileState();
}

class _UiDropDownDateRangeMobileState extends State<UiDropDownDateRangeMobile> {
  final layerLink = LayerLink();
  final OverlayPortalController _tooltipController = OverlayPortalController();
  bool isHovering = false;
  bool isFocused = false;
  bool calendarOpen = false;
  DateTimeRange? timeRange;
  final FocusNode focusNode = FocusNode();
  final UniqueKey tapRegionId = UniqueKey();
  DropdownDateRangeOptions selectedRange = DropdownDateRangeOptions.allTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: TapRegion(
        groupId: tapRegionId,
        onTapOutside: (event) {
          hideOverlay();
        },
        child: OverlayPortal.targetsRootOverlay(
          controller: _tooltipController,
          overlayChildBuilder: (BuildContext context) {
            final size = layerLink.leaderSize;
            if (size == null) return const SizedBox.shrink();

            return Positioned(
              right: 0,
              width: !calendarOpen ? size.width : null,
              child: CompositedTransformFollower(
                link: layerLink,
                offset: const Offset(0, Insets.xxs),
                targetAnchor: Alignment.bottomRight,
                followerAnchor: Alignment.topRight,
                showWhenUnlinked: false,
                child: TapRegion(
                  groupId: tapRegionId,
                  child: Stack(
                    children: [
                      _buildDropdownOptions(),
                    ],
                  ),
                ),
              ),
            );
          },
          child: _buildDropdownInput(),
        ),
      ),
    );
  }

  Widget _buildDropdownInput() {
    return SizedBox(
      height: 56,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            type: MaterialType.transparency,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight:
                    context.theme.inputDecorationTheme.constraints!.minHeight,
                maxHeight: 56,
              ),
              child: GestureDetector(
                onTap: toggleOverlay,
                child: CompositedTransformTarget(
                  link: layerLink,
                  child: InputDecorator(
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      isDense: true,
                      isCollapsed: true,
                      contentPadding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                      errorStyle: TextStyle(fontSize: 0, height: 0),
                    ),
                    isFocused: isFocused,
                    child: _buildSelectedRange(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _dateTimeBuilder() {
    final first = DateFormat('yyyy/MM/dd').format(timeRange!.start);
    final second = DateFormat('yyyy/MM/dd').format(timeRange!.end);

    return '$first - $second';
  }

  Widget _buildSelectedRange() {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.only(
              top: Insets.m,
              bottom: Insets.m,
              left: Insets.l,
              right: 44,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Период',
                  style: context.text.label.medium.copyWith(
                    color: context.color.surface.onSurfaceVariant,
                  ),
                ),
                Text(
                  selectedRange == DropdownDateRangeOptions.custom
                      ? _dateTimeBuilder()
                      : OperationsI18n.dropdownRangeName(selectedRange),
                  style: context.text.body.medium,
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: Insets.l),
            child: Transform.translate(
              offset: const Offset(0, -3),
              child: UiIcon(
                Assets.icons.icons24.calendar.path,
                color: const Color(0xFF666666).withOpacity(0.5),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownOptions() {
    return Container(
      decoration: BoxDecoration(
        color: context.color.surface.surface,
        borderRadius: BorderRadius.circular(Insets.l),
        boxShadow: [context.color.elevation.elevation1],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
            DropdownDateRangeOptions.values.map(_buildDropdownOption).toList(),
      ),
    );
  }

  Widget _buildDropdownOption(DropdownDateRangeOptions option) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: 56),
      // padding: const EdgeInsets.symmetric(horizontal: Insets.xs),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onOptionPress(option),
          hoverColor: context.color.surface.surfaceContainerLow,
          borderRadius: BorderRadius.circular(Insets.m),
          child: Padding(
            padding: const EdgeInsets.all(Insets.m),
            child: Text(
              OperationsI18n.dropdownRangeName(option),
            ),
          ),
        ),
      ),
    );
  }

  void toggleOverlay() {
    setState(() {
      isFocused = !isFocused;
      if (isFocused) {
        focusNode.requestFocus();
        _tooltipController.show();
      } else {
        focusNode.unfocus();
        _tooltipController.hide();
      }
    });
  }

  void hideOverlay() {
    focusNode.unfocus();
    isFocused = false;
    _tooltipController.hide();
    setState(() {
      calendarOpen = false;
    });
  }

  Future<void> onOptionPress(DropdownDateRangeOptions option) async {
    if (option != DropdownDateRangeOptions.custom) {
      int days = 0;
      switch (option) {
        case DropdownDateRangeOptions.days:
          days = 30;
        case DropdownDateRangeOptions.months:
          days = 30 * 6;
        case DropdownDateRangeOptions.years:
          days = 365;
        case DropdownDateRangeOptions.allTime:
          timeRange = DateTimeRange(start: DateTime(1970), end: DateTime.now());
        case DropdownDateRangeOptions.custom:
          days = 0;
      }
      if (days > 0) {
        timeRange = DateTimeRange(
          start: DateTime.now().subtract(Duration(days: days)),
          end: DateTime.now(),
        );
      }
      widget.onChanged?.call(timeRange);
      hideOverlay();
      setState(() {
        selectedRange = option;
      });
    } else {
      _tooltipController.hide();
      await showModalBottomSheet<dynamic>(
        context: context,
        useRootNavigator: true,
        isScrollControlled: true,
        builder: (context) {
          return UiRangeCalendar(
            buttonLabel: OperationsI18n.selectRangeButtonLabel,
            selectedRange: timeRange,
            from: DateTime(1970),
            to: DateTime.now(),
            onPressed: (selectedTimeRange) {
              Navigator.of(context).pop();
              widget.onChanged?.call(selectedTimeRange);
              setState(() {
                selectedRange = DropdownDateRangeOptions.custom;
                timeRange = selectedTimeRange;
                isFocused = false;
              });
            },
          );
        },
      );

      _tooltipController.show();
    }
  }
}

enum DropdownDateRangeOptions {
  days,
  months,
  years,
  allTime,
  custom,
}
