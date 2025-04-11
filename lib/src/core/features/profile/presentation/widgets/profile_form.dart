import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiProfileForm extends StatefulWidget {
  const UiProfileForm({required this.profile, super.key});

  final AuthenticatedUser profile;

  @override
  State<UiProfileForm> createState() => _UiProfileFormState();
}

class _UiProfileFormState extends State<UiProfileForm> {
  late String? currentCity;

  @override
  void initState() {
    super.initState();
    currentCity = widget.profile.city?.city;
  }

  Future<String?> _showModalBottomSheet({
    required String label,
    required String formControlName,
    required Map<int, String> items,
    required ProfileInfoForm infoForm,
    bool isEmptySearchWidgetNeeds = true,
  }) async {
    return showModalBottomSheet<String?>(
      context: context,
      enableDrag: false,
      isScrollControlled: true,
      builder: (context) {
        return UiAprBottomSheetDialogSearch<String>(
          label: label,
          itemAsString: (item) => item,
          items: items.values.toList(),
          backButtonCaption: CoreI18n.backButtonCaption,
          formControl:
              infoForm.form.controls[formControlName]! as FormControl<String>,
          emptySearchWidget: !isEmptySearchWidgetNeeds
              ? null
              : (search) {
                  return Container(
                    padding: const EdgeInsets.all(Insets.m),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(Insets.l),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: context.color.surface.surfaceContainerLow,
                          ),
                          child: UiIcon(
                            Assets.iconsWeb.basics.search.path,
                            color: context.color.constant.black,
                          ),
                        ),
                        const SizedBox(height: Insets.s),
                        Text(
                          search,
                          style: context.text.title.medium,
                        ),
                        const SizedBox(height: Insets.l),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...ProfileI18n.addedCityDescription.split('\n').map(
                                  (element) => Text(
                                    element,
                                    textAlign: TextAlign.center,
                                    style: context.text.body.small,
                                  ),
                                ),
                          ],
                        ),
                        const SizedBox(height: Insets.l),
                        TextButton(
                          onPressed: () {
                            infoForm.toggleLocalityCity(locality: search);
                            context.pop(search);
                          },
                          child: Text(
                            ProfileI18n.addedCityButtonLabel,
                            style: context.text.title.small,
                          ),
                        ),
                      ],
                    ),
                  );
                },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileInfoBloc>(
      create: (context) => ProfileInjection.sl()
        ..add(ProfileInfoEvent.started(profile: widget.profile))
        ..add(const ProfileInfoEvent.getDicts()),
      child: BlocConsumer<ProfileInfoBloc, ProfileInfoState>(
        listener: (context, state) {
          if (state.error != null) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(
              SnackBar(content: Text(state.error ?? '')),
            );
          }
        },
        builder: (context, state) {
          if (!(state.infoForm?.isReady ?? false) & !state.status.isReady ||
              state.regionsMap.isEmpty ||
              state.citiesMap.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.formIsEdit) {
            return SingleChildScrollView(
              child: ReactiveForm(
                formGroup: state.infoForm!.form,
                child: UiCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ProfileI18n.profileFormTitle,
                            style: context.text.title.medium.copyWith(
                              color: context.color.constant.black,
                            ),
                          ),
                          const SizedBox(height: Insets.s),
                          Text(
                            ProfileI18n.profileFormDesc,
                            style: context.text.body.small.copyWith(
                              color: context.color.constant.black,
                            ),
                          ),
                          const SizedBox(height: Insets.xl),
                        ],
                      ),
                      const SizedBox(height: Insets.s),
                      UiTextField<String>(
                        formControlName: ProfileInfoForm.lastName,
                        label: ProfileI18n.lastName,
                        required: true,
                      ),
                      const SizedBox(height: Insets.s),
                      _buildResponsiveLayout(
                        context,
                        widgets: [
                          UiTextField<String>(
                            formControlName: ProfileInfoForm.firstName,
                            label: ProfileI18n.firstName,
                            required: true,
                          ),
                          UiTextField<String>(
                            formControlName: ProfileInfoForm.middleName,
                            label: ProfileI18n.middleName,
                          ),
                        ],
                      ),
                      Divider(
                        color: context.color.surface.surfaceContainerLow,
                        height: Insets.xl * 2,
                      ),
                      _buildResponsiveLayout(
                        context,
                        widgets: [
                          UiPhoneField(
                            formControlName: ProfileInfoForm.phone,
                            label: ProfileI18n.phone,
                            required: true,
                          ),
                          UiTextField<String>(
                            formControlName: ProfileInfoForm.email,
                            label: ProfileI18n.email,
                            required: true,
                          ),
                        ],
                      ),
                      Divider(
                        color: context.color.surface.surfaceContainerLow,
                        height: Insets.xl * 2,
                      ),
                      _buildResponsiveLayout(
                        context,
                        widgets: [
                          UiDropDown(
                            margin: EdgeInsets.zero,
                            formControlName: ProfileInfoForm.sex,
                            fillColor:
                                context.color.surface.surfaceContainerLow,
                            label: ProfileI18n.sex,
                            isRequired: true,
                            items: state.sexesMap.keys.toList(),
                            itemAsString: (item) => state.sexesMap[item] ?? '',
                          ),
                          Column(
                            children: [
                              UiDateTextField(
                                formControlName: ProfileInfoForm.birthday,
                                required: true,
                                labelText: ProfileI18n.birthday,
                                minYear: '1900',
                                maxYear: DateTime.now().year.toString(),
                              ),
                              ReactiveValueListenableBuilder<bool>(
                                formControlName: ProfileInfoForm.adult,
                                builder: (context, control, child) {
                                  if (control.disabled) {
                                    return const SizedBox.shrink();
                                  }

                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: Insets.xl),
                                      Row(
                                        children: [
                                          const SizedBox(width: Insets.xs),
                                          Flexible(
                                            child: UiCheckboxField(
                                              label: ProfileI18n.adult,
                                              formControlName:
                                                  ProfileInfoForm.adult,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: context.color.surface.surfaceContainerLow,
                        height: Insets.xl * 2,
                      ),
                      _buildResponsiveLayout(
                        context,
                        widgets: [
                          UiDefaultInfoField(
                            value: currentCity ?? state.profile.locality,
                            hint: ProfileI18n.city,
                            onTap: () async {
                              final value = await _showModalBottomSheet(
                                items: state.citiesMap,
                                infoForm: state.infoForm!,
                                label: ProfileI18n.city,
                                formControlName: ProfileInfoForm.city,
                              );
                              if (value != null) {
                                setState(() {
                                  currentCity = value;
                                });
                              }
                            },
                          ),
                          UiDefaultInfoField(
                            value: state.infoForm!.form
                                .control(ProfileInfoForm.region)
                                .value as String?,
                            isDisabled: state.infoForm!.form
                                .control(ProfileInfoForm.region)
                                .disabled,
                            hint: ProfileI18n.region,
                            onTap: () async {
                              await _showModalBottomSheet(
                                items: state.regionsMap,
                                infoForm: state.infoForm!,
                                label: ProfileI18n.region,
                                formControlName: ProfileInfoForm.region,
                                isEmptySearchWidgetNeeds: false,
                              );
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        child: ReactiveFormConsumer(
                          builder: (context, form, child) {
                            if (state.profile.status.needToFeelMainForm) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: Insets.l),
                                    child: UiFilledButton(
                                      label: CoreI18n.save,
                                      disabled: form.invalid,
                                      onPressed: () =>
                                          context.read<ProfileInfoBloc>().add(
                                                const ProfileInfoEvent
                                                    .updateProfile(),
                                              ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: Insets.l),
                                    child: TextButton(
                                      onPressed: () {
                                        context.read<ProfileInfoBloc>().add(
                                              const ProfileInfoEvent.editForm(),
                                            );
                                      },
                                      child: Text(
                                        CoreI18n.note,
                                        style:
                                            context.text.title.small.copyWith(
                                          color:
                                              context.color.surface.onSurface,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: Insets.l),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: Insets.l),
                                    child: UiFilledButton(
                                      label: CoreI18n.saveChanges,
                                      disabled: form.invalid || form.disabled,
                                      onPressed: () {
                                        context.read<ProfileInfoBloc>().add(
                                              const ProfileInfoEvent
                                                  .updateProfile(),
                                            );
                                      },
                                    ),
                                  ),
                                ],
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }

          if (!state.formIsEdit) {
            final profile = state.profile;

            return UiRespondentProfileFormView(
              fields: {
                ProfileI18n.fio: '${profile.lastName ?? ''} '
                    '${profile.firstName ?? ''} '
                    '${profile.middleName ?? ''}',
                ProfileI18n.phone: profile.phone ?? '',
                ProfileI18n.email: profile.email ?? '',
                ProfileI18n.sex: profile.sex?.sex ?? '',
                ProfileI18n.birthday: profile.birthday.toString(),
                ProfileI18n.city:
                    '${profile.city?.city ?? profile.locality ?? ''}, '
                        '${profile.region?.region ?? ''}',
              },
              editButtonLabel: ProfileI18n.edit,
              onEdit: () => context.read<ProfileInfoBloc>().add(
                    const ProfileInfoEvent.editForm(isEdited: true),
                  ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget _buildResponsiveLayout(
    BuildContext context, {
    required List<Widget> widgets,
    BoxConstraints? constrain,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double maxWidth = constraints.maxWidth;

        constrain = constraints;

        if ((290 * 2 + Insets.s) <= maxWidth) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildWrappedWidgets(widgets, isRow: true),
          );
        } else {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: _buildWrappedWidgets(widgets, isRow: false),
          );
        }
      },
    );
  }

  List<Widget> _buildWrappedWidgets(
    List<Widget> widgets, {
    required bool isRow,
  }) {
    final List<Widget> wrappedWidgets = [];
    for (int i = 0; i < widgets.length; i++) {
      if (isRow) {
        wrappedWidgets.add(Flexible(child: widgets[i]));
      } else {
        wrappedWidgets.add(Flexible(child: widgets[i]));
      }

      if (i < widgets.length - 1) {
        wrappedWidgets.add(
          isRow
              ? const SizedBox(width: Insets.s)
              : const SizedBox(height: Insets.s),
        );
      }
    }
    return wrappedWidgets;
  }
}
