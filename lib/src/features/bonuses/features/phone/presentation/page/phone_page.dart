import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:apr/src/features/home/presentation/_presentation.dart';
import 'package:apr/src/features/operations/_operations.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

final _cyrillicRegular = RegExp('[А-Яа-яёЁ-]');
final _numberRegular = RegExp('[0-9]');

class PhonePage extends StatefulWidget {
  const PhonePage({super.key});

  @override
  State<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  late WithdrawToPhoneBloc _bloc;

  @override
  void initState() {
    super.initState();
    final profileBlocStatus = context.read<ProfileBloc>().state.status;
    _bloc = GetIt.I<WithdrawToPhoneBloc>();

    if (profileBlocStatus.isReady) {
      final profile = context.read<ProfileBloc>().state.profile;

      _bloc.add(
        WithdrawToPhoneEvent.init(
          profile: profile,
        ),
      );
    }
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  Future<void> _showConfimDialog(BuildContext ctx) async {
    final result = await showDialog<bool>(
      context: ctx,
      builder: (context) => ConfirmPhoneWithdrawDialog(
        bloc: _bloc,
      ),
    );

    if (result != null && result == true) {
      context.replace(OperationsRoutePath.initialPath);
    }
  }

  void _profileStateListener(BuildContext context, ProfileState state) {
    if (state.status.isReady) {
      _bloc.add(WithdrawToPhoneEvent.init(profile: state.profile));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WithdrawToPhoneBloc>.value(
      value: _bloc,
      child: BlocListener<ProfileBloc, ProfileState>(
        listenWhen: (previous, current) => previous.status.isFetchingInProgress,
        listener: _profileStateListener,
        child: Scaffold(
          appBar: AppBar(
            title: Text(CardI18n.transferToCard),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final isMobile = constraints.maxWidth < 768;
                final isDesktop = constraints.maxWidth >= 1200;

                final double horizontalPadding = switch (constraints.maxWidth) {
                  < 520 => Insets.l,
                  >= 768 => 112,
                  _ => Insets.xl,
                };

                final ownerDataFormFields = [
                  [
                    ReactiveFormConsumer(
                      builder: (context, formGroup, child) {
                        final control = formGroup.controls.entries
                            .firstWhereOrNull(
                              (c) => c.key == WithdrawToPhoneForm.lastName,
                            )
                            ?.value;

                        final hasEqualsError =
                            control?.errors.entries.firstWhereOrNull(
                                  (e) => e.key == ValidationMessage.equals,
                                ) !=
                                null;

                        return UiTextField<String>(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(_cyrillicRegular),
                          ],
                          formControlName: WithdrawToPhoneForm.lastName,
                          label: ProfileI18n.lastName,
                          isShowErrorMessage: !(hasEqualsError &&
                              control?.errors.entries.length == 1),
                          validationMessages: {
                            ValidationMessage.required: (_) =>
                                PhoneI18n.requiredField,
                          },
                        );
                      },
                    ),
                  ],
                  [
                    ReactiveFormConsumer(
                      builder: (context, formGroup, child) {
                        final control = formGroup.controls.entries
                            .firstWhereOrNull(
                              (c) => c.key == WithdrawToPhoneForm.firstName,
                            )
                            ?.value;

                        final hasEqualsError =
                            control?.errors.entries.firstWhereOrNull(
                                  (e) => e.key == ValidationMessage.equals,
                                ) !=
                                null;

                        return UiTextField<String>(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(_cyrillicRegular),
                          ],
                          formControlName: WithdrawToPhoneForm.firstName,
                          label: ProfileI18n.firstName,
                          isShowErrorMessage: !(hasEqualsError &&
                              control?.errors.entries.length == 1),
                          validationMessages: {
                            ValidationMessage.required: (_) =>
                                PhoneI18n.requiredField,
                          },
                        );
                      },
                    ),
                    ReactiveFormConsumer(
                      builder: (context, formGroup, child) {
                        final control = formGroup.controls.entries
                            .firstWhereOrNull(
                              (c) => c.key == WithdrawToPhoneForm.surname,
                            )
                            ?.value;

                        final hasEqualsError =
                            control?.errors.entries.firstWhereOrNull(
                                  (e) => e.key == ValidationMessage.equals,
                                ) !=
                                null;

                        return UiTextField<String>(
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(_cyrillicRegular),
                          ],
                          formControlName: WithdrawToPhoneForm.surname,
                          label: ProfileI18n.middleName,
                          isShowErrorMessage: !(hasEqualsError &&
                              control?.errors.entries.length == 1),
                          validationMessages: {
                            ValidationMessage.required: (_) =>
                                PhoneI18n.requiredField,
                          },
                        );
                      },
                    ),
                  ]
                ];

                final phoneDataFormFields = [
                  [
                    UiTextField<String>(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(_numberRegular),
                        PhoneInputFormatter(),
                      ],
                      formControlName: WithdrawToPhoneForm.phoneNumber,
                      label: PhoneI18n.phone,
                      validationMessages: {
                        ValidationMessage.required: (_) =>
                            PhoneI18n.requiredField,
                      },
                    ),
                    BlocBuilder<WithdrawToPhoneBloc, WithdrawToPhoneState>(
                      builder: (context, state) => UiDropDown<MobileOperator>(
                        isShowOverlayOnTop: true,
                        overlayMaxHeight: 252,
                        items: state.operators,
                        formControlName: WithdrawToPhoneForm.mobileOperator,
                        label: PhoneI18n.operator,
                        itemAsString: (item) => item.mobileOperatorName,
                        validationMessages: {
                          ValidationMessage.required: (_) =>
                              PhoneI18n.requiredField,
                        },
                      ),
                    ),
                  ]
                ];

                return Container(
                  margin: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UiBreadCrumbs(
                        breadcrumbs: [
                          Breadcrumb(
                            title: PhoneI18n.withdrawalOfPoints,
                            onPressed: () => context.pop(),
                          ),
                          Breadcrumb(title: PhoneI18n.transferToPhone),
                        ],
                      ),
                      SizedBox(height: isMobile ? Insets.l : Insets.xl),
                      const SizedBox(height: Insets.l),
                      Container(
                        decoration: _boxDecoration(context),
                        padding: const EdgeInsets.all(Insets.xl),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                            3,
                            (index) => Padding(
                              padding: EdgeInsets.only(
                                top: index == 0 ? Insets.zero : Insets.s,
                              ),
                              child: Text(
                                '${index + 1}. ${PhoneI18n.terms('i$index')}',
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: isMobile ? Insets.l : Insets.xl),
                      BlocBuilder<WithdrawToPhoneBloc, WithdrawToPhoneState>(
                        builder: (context, state) => state.form != null
                            ? ReactiveForm(
                                formGroup: state.form!.form,
                                child: Flex(
                                  direction: isDesktop
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  crossAxisAlignment: isDesktop
                                      ? CrossAxisAlignment.start
                                      : CrossAxisAlignment.center,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        final widget = Column(
                                          children: [
                                            _buildCardFormSection(
                                              context,
                                              PhoneI18n.cardHolderDetailsTitle,
                                              PhoneI18n.provideRealData,
                                              isMobile,
                                              ownerDataFormFields,
                                              true,
                                            ),
                                            const SizedBox(height: Insets.s),
                                            _buildCardFormSection(
                                              context,
                                              PhoneI18n.phoneData,
                                              null,
                                              isMobile,
                                              phoneDataFormFields,
                                              false,
                                            ),
                                          ],
                                        );
                                        return isDesktop
                                            ? Expanded(child: widget)
                                            : widget;
                                      },
                                    ),
                                    SizedBox(
                                      width:
                                          isDesktop ? Insets.xl : Insets.zero,
                                      height:
                                          !isDesktop ? Insets.xl : Insets.zero,
                                    ),
                                    _buildSummarySection(
                                      context,
                                      isDesktop,
                                      isMobile,
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox(),
                      ),
                      const SizedBox(height: Insets.l),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardFormSection(
    BuildContext context,
    String title,
    String? subtitle,
    bool isMobile,
    List<List<Widget>> formFields,
    bool isShowErrorString,
  ) {
    return Container(
      decoration: _boxDecoration(context),
      padding: const EdgeInsets.all(Insets.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: context.text.title.medium),
          if (subtitle != null) ...[
            const SizedBox(height: Insets.xs),
            Text(
              subtitle,
              style: context.text.body.small.copyWith(
                color: context.color.surface.onSurfaceVariant,
              ),
            ),
          ],
          const SizedBox(height: Insets.l),
          ...formFields.map(
            (group) => Flex(
              crossAxisAlignment: CrossAxisAlignment.start,
              direction: isMobile ? Axis.vertical : Axis.horizontal,
              children: group.mapIndexed(
                (index, field) {
                  final fieldWithPadding = Padding(
                    padding: EdgeInsets.only(
                      top: Insets.s,
                      left: (!isMobile && index != 0) ? Insets.s : Insets.zero,
                    ),
                    child: field,
                  );

                  return isMobile
                      ? fieldWithPadding
                      : Expanded(
                          child: fieldWithPadding,
                        );
                },
              ).toList(),
            ),
          ),
          if (isShowErrorString)
            ReactiveFormConsumer(
              builder: (context, formGroup, child) {
                final keys = [
                  WithdrawToPhoneForm.firstName,
                  WithdrawToPhoneForm.surname,
                  WithdrawToPhoneForm.lastName,
                ];

                final controls = formGroup.controls.entries
                    .where((control) => keys.contains(control.key))
                    .map((e) => e.value)
                    .toList();

                final hasErrors = controls
                    .where(
                      (control) =>
                          control.invalid && (control.dirty || control.touched),
                    )
                    .isNotEmpty;

                return hasErrors
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: Insets.l),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              UiIcon(
                                Assets.icons.warnTriangle.path,
                                color: const Color(0xFFEF4343),
                              ),
                              const SizedBox(width: Insets.m),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    text: PhoneI18n.fioErrorStart,
                                    style: context.text.body.small.copyWith(
                                      color: const Color(0xFFEF4343),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: PhoneI18n.fioErrorEnd,
                                        style: context.text.body.smallLink
                                            .copyWith(
                                          color: const Color(0xFFEF4343),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : const SizedBox.shrink();
              },
            ),
        ],
      ),
    );
  }

  BoxDecoration _boxDecoration(BuildContext context) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(Insets.l),
      color: context.color.constant.white,
      boxShadow: [
        BoxShadow(
          color: const Color(0xff757575).withOpacity(0.1),
          blurRadius: Insets.l,
        ),
      ],
    );
  }

  Widget _buildSummarySection(
    BuildContext context,
    bool isDesktop,
    bool isMobile,
  ) {
    return BlocBuilder<UserPointsBloc, UserPointsState>(
      builder: (context, state) => SizedBox(
        width: isDesktop ? 348 : null,
        child: Container(
          decoration: _boxDecoration(context),
          padding: const EdgeInsets.all(Insets.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(HomeI18n.bonuses, style: context.text.title.medium),
                      Text(
                        HomeI18n.bonusesDesc,
                        style: context.text.body.small.copyWith(
                          color: context.color.background.onBackground,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  state.maybeWhen(
                    success: (dto, pointsConfigParams, isAvailable) => Row(
                      children: [
                        Text(
                          '${dto.amount}',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 34,
                            height: 1,
                            color: context.color.primary.primary,
                          ),
                        ),
                        const SizedBox(width: Insets.xxs),
                        UiIcon(
                          Assets.icons.icons24.bonus.path,
                          color: context.color.primary.primary,
                        ),
                      ],
                    ),
                    orElse: SizedBox.new,
                  ),
                ],
              ),
              const SizedBox(height: Insets.l),
              BlocBuilder<WithdrawToPhoneBloc, WithdrawToPhoneState>(
                buildWhen: (previous, current) => previous.pointsConfig == null,
                builder: (context, state) {
                  final minSumMobile = state.pointsConfig!.minSumMobile;
                  final maxSumTransaction =
                      state.pointsConfig!.maxSumTransaction;
                  final maxSumYear = state.pointsConfig!.maxSumYear;

                  return UiTextField<int>(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(_numberRegular),
                    ],
                    suffixUiIcon: UiIcon(Assets.icons.rubble.path),
                    formControlName: WithdrawToPhoneForm.withdrawalAmount,
                    label: PhoneI18n.withdrawalAmount,
                    validationMessages: {
                      'min_sum_mobile_error': (_) =>
                          PhoneI18n.minSumMobileError(minSumMobile),
                      'user_points_error': (_) =>
                          PhoneI18n.amountError(state.userPoints ?? 0),
                      'max_sum_transaction_error': (_) =>
                          PhoneI18n.maxSumTransactionError(
                            maxSumTransaction - 1,
                          ),
                      'available_spend_amount': (_) =>
                          PhoneI18n.availableSpendAmountError(
                            state.availableSpendAmount ?? 0,
                            maxSumYear,
                          ),
                    },
                  );
                },
              ),
              const SizedBox(height: Insets.l),
              _buildCheckboxForm(
                context,
                WithdrawToPhoneForm.approvalPdn,
                PhoneI18n.approvalPdn,
                () {
                  DocumentUtils.openDocumentNewTab(
                    DocumentRoutePath.fullPersonalDataPolicy,
                  );
                },
              ),
              const SizedBox(height: Insets.l),
              _buildCheckboxForm(
                context,
                WithdrawToPhoneForm.approvalOfferCalculationsByCard,
                PhoneI18n.approvalOfferCalculationsByCard,
                () {
                  DocumentUtils.openDocumentNewTab(
                    DocumentRoutePath.fullOfferToMobile,
                  );
                },
              ),
              const SizedBox(height: Insets.l),
              _buildCheckboxForm(
                context,
                WithdrawToPhoneForm.approvalPartnerList,
                PhoneI18n.approvalPartnerList,
                () {
                  DocumentUtils.openDocumentNewTab(
                    DocumentRoutePath.fullListOfPartners,
                  );
                },
              ),
              const SizedBox(height: Insets.l),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ReactiveFormConsumer(
                    builder: (context, formGroup, child) => UiFilledButton(
                      label: PhoneI18n.exchange,
                      big: true,
                      disabled: formGroup.hasErrors,
                      onPressed: () {
                        if (formGroup.valid) {
                          _showConfimDialog(context);
                        }
                      },
                      border: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCheckboxForm(
    BuildContext context,
    String formControlName,
    String label,
    VoidCallback onLinkTap,
  ) {
    return ReactiveValueListenableBuilder<bool>(
      formControlName: formControlName,
      builder: (context, control, child) {
        return UiCheckboxButton(
          crossAxisAlignment: CrossAxisAlignment.start,
          widgetLabel: UiLinkText(text: label, callbacks: [onLinkTap]),
          onPressed: (value) => control.patchValue(value),
          selected: control.value ?? false,
        );
      },
    );
  }
}
