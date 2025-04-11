// ignore_for_file: avoid_bool_literals_in_conditional_expressions, lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';
import 'package:reactive_forms/reactive_forms.dart';

class UiLocationField<T> extends ReactiveFormField<T, T> {
  UiLocationField({
    required List<T> items,
    super.formControlName,
    super.formControl,
    String? labelText,
    super.key,
    super.focusNode,
    bool autofocus = false,
    bool isRequired = false,
    String? tooltip,
    String? hintText,
    String? helperText,
    int divider = 0,
    int? maxLength,
    double overlayMaxHeight = 434,
    int errorsCount = 1,
    EdgeInsets margin = const EdgeInsets.only(bottom: Insets.l),
    ReactiveFormFieldCallback<T>? onChanged,
    ShowErrorsFunction<T>? showErrors,
    super.validationMessages,
    String Function(T item)? itemAsString,
    UiTooltipSettings tooltipSettings =
        const UiTooltipSettings(arrow: UiTooltipArrow.downL),
  }) : super(
          showErrors: showErrors ??
              (control) =>
                  control.invalid && (control.dirty || control.touched),
          builder: (state) {
            return Builder(
              builder: (context) {
                return UiLocationFieldInput<T>(
                  focusNode: focusNode,
                  items: items,
                  state: state,
                  labelText: labelText,
                  tooltip: tooltip,
                  showErrors: showErrors?.call(state.control) ?? false,
                  isRequired: isRequired,
                  formControl: state.control,
                  helperText: helperText,
                  errorsCount: errorsCount,
                  margin: margin,
                  hintText: hintText,
                  autofocus: autofocus,
                  maxLength: maxLength,
                  overlayMaxHeight: overlayMaxHeight,
                  divider: divider,
                  itemAsString: itemAsString ?? (T item) => item.toString(),
                  onChanged: onChanged,
                  tooltipSettings: tooltipSettings,
                  validationMessages: validationMessages,
                );
              },
            );
          },
        );
}

class UiLocationFieldInput<T> extends StatefulWidget {
  const UiLocationFieldInput({
    required this.items,
    required this.state,
    required this.formControl,
    required this.isRequired,
    required this.labelText,
    required this.showErrors,
    required this.focusNode,
    required this.tooltip,
    required this.helperText,
    required this.hintText,
    required this.autofocus,
    required this.maxLength,
    required this.divider,
    required this.itemAsString,
    required this.onChanged,
    required this.tooltipSettings,
    this.validationMessages,
    this.errorsCount = 1,
    this.overlayMaxHeight = 434.0,
    this.margin = const EdgeInsets.only(bottom: Insets.l),
    super.key,
  });

  final EdgeInsets margin;

  final FocusNode? focusNode;

  final List<T> items;

  final ReactiveFormFieldState<T, T> state;

  final Map<String, ValidationMessageFunction>? validationMessages;

  final FormControl<T> formControl;

  final bool isRequired;

  final String? labelText;

  final String? tooltip;

  final String? helperText;

  final String? hintText;

  final bool showErrors;

  final bool autofocus;

  final int? maxLength;

  final int errorsCount;

  final int divider;

  final String Function(T item) itemAsString;

  final ReactiveFormFieldCallback<T>? onChanged;

  final UiTooltipSettings tooltipSettings;

  final double overlayMaxHeight;

  @override
  State<UiLocationFieldInput<T>> createState() =>
      _UiLocationFieldInputState<T>();
}

class _UiLocationFieldInputState<T> extends State<UiLocationFieldInput<T>> {
  final layerLink = LayerLink();

  bool isHovering = false;
  bool isFocused = false;

  late FocusNode focusNode;

  OverlayEntry? entry;

  bool get hasLabel => widget.labelText != null;

  @override
  void initState() {
    super.initState();

    focusNode = widget.focusNode ?? FocusNode();

    if (widget.autofocus) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        focusNode.requestFocus();
      });
    }
  }

  @override
  void didUpdateWidget(UiLocationFieldInput<T> oldWidget) {
    setState(() {});
    super.didUpdateWidget(oldWidget);
  }

  ValidationMessageFunction? _findValidationMessage(
    String errorKey,
  ) {
    if (widget.validationMessages != null &&
        widget.validationMessages!.containsKey(errorKey)) {
      return widget.validationMessages![errorKey];
    } else {
      final formConfig = ReactiveFormConfig.of(context);

      return formConfig?.validationMessages[errorKey];
    }
  }

  @override
  Widget build(BuildContext context) {
    final InputExtension inputExt = context.inputExt;

    String helperTexts = widget.helperText ?? '';

    final bool hasErrors = widget.formControl.invalid &&
        widget.formControl.touched &&
        widget.formControl.errors.isNotEmpty;

    final bool isFilled = ((widget.formControl.value != null &&
                widget.formControl.value!.toString().isNotEmpty) ||
            isFocused) &&
        hasLabel;

    TextStyle labelStyle = inputExt.labelStyle;
    TextStyle helperTextStyle = inputExt.helperTextStyle;

    if (hasErrors) {
      labelStyle = labelStyle.copyWith(color: inputExt.errorColor);

      helperTextStyle = helperTextStyle.copyWith(
        color: inputExt.errorColor,
      );

      helperTexts = '';

      if (widget.validationMessages != null) {
        final errorsMap = widget.formControl.errors.entries.map((e) {
          return _findValidationMessage(e.key)!(e.value);
        }); // .whereNot((element) => element == null);

        for (int i = 0; i < widget.errorsCount; i++) {
          if (helperTexts.isNotEmpty) {
            helperTexts += '\n';
          }

          // ignore: use_string_buffers
          helperTexts += errorsMap.elementAt(i);
        }
      } else {
        for (int i = 0; i < widget.errorsCount; i++) {
          if (helperTexts.isNotEmpty) {
            helperTexts += '\n';
          }

          // ignore: use_string_buffers
          helperTexts += _findValidationMessage(
            widget.formControl.errors.entries.elementAt(i).key,
          )!(
            widget.formControl.errors.entries.elementAt(i).value,
          );
        }
      }
    }

    return Padding(
      padding: widget.margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              focusNode: focusNode,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              splashColor: Colors.transparent,
              onFocusChange: (value) {
                setState(() {
                  isFocused = value;
                });
              },
              onTap: widget.formControl.disabled
                  ? null
                  : () {
                      if (focusNode.hasFocus) {
                        focusNode.unfocus();

                        setState(() {
                          isFocused = false;
                        });

                        hideOverlay();
                      } else {
                        focusNode.requestFocus();

                        setState(() {
                          isFocused = true;
                        });

                        showOverlay(
                          widget.formControl,
                          widget.maxLength,
                          widget.divider,
                          widget.itemAsString,
                        );
                      }
                    },
              onHover: (value) {
                setState(() {
                  isHovering = value;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CompositedTransformTarget(
                    link: layerLink,
                    child: InputDecorator(
                      decoration: InputDecoration(
                        errorText: hasErrors ? '' : null,
                        helperText: widget.helperText,
                        hintText: widget.hintText,
                        isDense: true,
                        isCollapsed: true,
                        contentPadding: EdgeInsets.zero,
                        errorStyle: const TextStyle(
                          fontSize: 0,
                          height: 0,
                        ),
                      ),
                      isHovering: isHovering,
                      isFocused: isFocused,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: context.theme.inputDecorationTheme
                              .constraints!.minHeight,
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: double.infinity,
                                    padding: EdgeInsets.only(
                                      left: Insets.l,
                                      top: isFilled ? Insets.xl : Insets.l,
                                      bottom: isFilled ? Insets.s : Insets.l,
                                    ),
                                    child: Text(
                                      widget.state.value != null
                                          ? widget.itemAsString(
                                              widget.state.value as T,
                                            )
                                          : widget.hintText ?? '',
                                      style: context.text.body.medium.copyWith(
                                        color: widget.state.value != null
                                            ? context.color.constant.black
                                            : context.color.secondary.secondary,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: Insets.l),
                                  child: UiIcon(
                                    isFocused
                                        ? Assets.icons.icons24.dropdownUp.path
                                        : Assets.icons.icons24.dropdown.path,
                                    //color: iconColor,
                                  ),
                                ),
                              ],
                            ),
                            if (widget.labelText != null)
                              Positioned(
                                top: isFilled ? 8 : 16,
                                left: Insets.l,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: widget.labelText,
                                        style: labelStyle.copyWith(
                                          fontSize: !isFilled
                                              ? labelStyle.fontSize
                                              : (labelStyle.fontSize ?? 0) *
                                                  0.75,
                                        ),
                                        children: [
                                          if (widget.isRequired)
                                            TextSpan(
                                              text: '*',
                                              style: labelStyle.copyWith(
                                                fontSize: !isFilled
                                                    ? labelStyle.fontSize
                                                    : (labelStyle.fontSize ??
                                                            0) *
                                                        0.75,
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    // if (widget.tooltip != null)
                                    //   UiTooltip(
                                    //     tooltip: widget.tooltip ?? '',
                                    //     showOnHover:
                                    //         widget.tooltipSettings.showOnHover,
                                    //     arrow: widget.tooltipSettings.arrow,
                                    //     tooltipWidth: widget.tooltipSettings.width,
                                    //     parentWidth:
                                    //         widget.tooltipSettings.parentWidth,
                                    //     child: Padding(
                                    //       padding: const EdgeInsets.only(
                                    //         left: Insets.xs,
                                    //       ),
                                    //       child: UiIcon(
                                    //         Assets.icons.help.path,
                                    //         color: context
                                    //             .color.secondary.secondaryContainer,
                                    //       ),
                                    //     ),
                                    //   ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (helperTexts.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(
                        left: Insets.l,
                        top: Insets.s,
                      ),
                      child: Text(
                        helperTexts,
                        style: helperTextStyle,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> showOverlay(
    FormControl<T> field,
    int? maxLength,
    int divider,
    String Function(T item) itemAsString,
  ) async {
    final overlay = Overlay.of(context);

    final renderBox = context.findRenderObject()! as RenderBox;

    final size = renderBox.size;

    entry = OverlayEntry(
      builder: (context) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: hideOverlay,
        child: Stack(
          children: [
            Positioned(
              width: size.width,
              child: CompositedTransformFollower(
                link: layerLink,
                offset: const Offset(0, 52),
                showWhenUnlinked: false,
                child: buildOverlay(
                  field,
                  () {
                    setState(() {});

                    widget.onChanged?.call(
                      field,
                    );
                  },
                  maxLength,
                  divider,
                  itemAsString,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    overlay.insert(entry!);
  }

  void hideOverlay() {
    focusNode.unfocus();

    entry?.remove();

    entry = null;
  }

  @override
  void deactivate() {
    entry?.remove();

    entry = null;

    super.deactivate();
  }

  Widget buildOverlay(
    FormControl<T> field,
    VoidCallback onChanged,
    int? maxLength,
    int divider,
    String Function(T item) itemAsString,
  ) {
    return ReactiveValueListenableBuilder<T>(
      formControl: field,
      builder: (overlayContext, state, child) {
        return Theme(
          data: Theme.of(context),
          child: Material(
            color: Colors.transparent,
            child: StatefulBuilder(
              builder: (context, setState) {
                return Container(
                  constraints: BoxConstraints(
                    maxHeight: widget.overlayMaxHeight,
                  ),
                  decoration: BoxDecoration(
                    color: context.color.surface.surface,
                    borderRadius: BorderRadius.circular(Insets.l),
                    boxShadow: [
                      context.color.elevation.elevation1,
                    ],
                  ),
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: widget.items.length,
                    itemBuilder: (context, index) {
                      return Container(
                        constraints: const BoxConstraints(minHeight: 46),
                        padding: const EdgeInsets.only(
                          left: Insets.xs,
                          right: Insets.xs,
                          top: Insets.xs,
                          bottom: Insets.xs,
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              state.updateValue(widget.items[index]);
                              hideOverlay();
                            },
                            hoverColor:
                                context.color.surface.surfaceContainerLow,
                            highlightColor: Colors.transparent,
                            borderRadius: BorderRadius.circular(Insets.m),
                            child: Padding(
                              padding: const EdgeInsets.all(Insets.m),
                              child: Text(itemAsString(widget.items[index])),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      if (index + 1 == divider) {
                        return const Divider();
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
