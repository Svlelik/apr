import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class UiPassportForm extends StatelessWidget {
  const UiPassportForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PassportBloc, PassportState>(
      builder: (context, state) {
        if (state.infoForm?.isReady ?? false) {
          return ReactiveForm(
            formGroup: state.infoForm!.form,
            child: LayoutBuilder(
              builder: (context, innerConstraints) {
                final layout = UiAdaptiveUtils.layoutType(innerConstraints);
                Axis direction = Axis.horizontal;

                switch (layout) {
                  case UiLayoutType.mobile:
                  case UiLayoutType.tablet:
                    direction = Axis.vertical;
                  case UiLayoutType.desktop:
                }

                final content = Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildPersonalDataCard(context, direction),
                    const SizedBox(height: Insets.s),
                    _buildPassportDataCard(context, direction),
                    const SizedBox(height: Insets.s),
                    _buildFileDataCard(context, direction),
                  ],
                );

                final bar = ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth:
                        Axis.horizontal == direction ? 348 : double.infinity,
                  ),
                  child: UiCard(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(Insets.l),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: Insets.xl,
                      horizontal: Insets.l,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UiCheckboxField(
                              formControlName: PassportForm.consentPersonalData,
                            ),
                            const SizedBox(width: Insets.s),
                            Expanded(
                              child: UiLinkText(
                                text: BonusesI18n.consentPersonalData,
                                callbacks: [() {}],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: Insets.l),
                        UiFilledButton(
                          border: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          onPressed: state.infoForm!.form.valid ? () {} : null,
                          label: BonusesI18n.sendDataButton,
                        ),
                      ],
                    ),
                  ),
                );

                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: Axis.horizontal == direction
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(child: content),
                              const SizedBox(width: Insets.xl),
                              bar,
                            ],
                          )
                        : Column(
                            children: [
                              content,
                              const SizedBox(height: Insets.s),
                              bar,
                            ],
                          ),
                  ),
                );
              },
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget _buildPersonalDataCard(
    BuildContext context,
    Axis direction,
  ) {
    return UiCard(
      borderRadius: const BorderRadius.all(Radius.circular(Insets.l)),
      padding: const EdgeInsets.all(Insets.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            BonusesI18n.personalDataTitle,
            style: context.text.title.medium,
          ),
          Text(
            BonusesI18n.personalDataDescription,
            style: context.text.body.small,
          ),
          const SizedBox(height: Insets.l),
          UiTextField(
            formControlName: PassportForm.lastName,
            label: BonusesI18n.lastName,
            required: true,
          ),
          const SizedBox(height: Insets.s),
          // StaggeredGrid.count(
          //   crossAxisCount: direction == Axis.horizontal ? 2 : 1,
          //   crossAxisSpacing: Insets.s,
          //   mainAxisSpacing: Insets.s,
          //   children: [
          //     UiTextField(
          //       formControlName: PassportForm.firstName,
          //       label: BonusesI18n.firstName,
          //       required: true,
          //     ),
          //     UiTextField(
          //       formControlName: PassportForm.middleName,
          //       label: BonusesI18n.middleName,
          //     ),
          //   ],
          // ),
          const SizedBox(height: Insets.s),
          // StaggeredGrid.count(
          //   crossAxisCount: direction == Axis.horizontal ? 2 : 1,
          //   crossAxisSpacing: Insets.s,
          //   mainAxisSpacing: Insets.s,
          //   children: [
          //     UiDateTimePicker(
          //       firstDate: DateTime(1900, 12, 12),
          //       lastDate: DateTime.now(),
          //       margin: EdgeInsets.zero,
          //       formControlName: PassportForm.birthday,
          //       fillColor: context.color.surface.surfaceContainerLow,
          //       isRequired: true,
          //       label: BonusesI18n.birthday,
          //     ),
          //     UiTextField(
          //       formControlName: PassportForm.iin,
          //       label: BonusesI18n.iin,
          //       required: true,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget _buildPassportDataCard(
    BuildContext context,
    Axis direction,
  ) {
    return UiCard(
      borderRadius: const BorderRadius.all(Radius.circular(Insets.l)),
      padding: const EdgeInsets.all(Insets.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            BonusesI18n.passportTitle,
            style: context.text.title.medium,
          ),
          const SizedBox(height: Insets.l),
          // StaggeredGrid.count(
          //   crossAxisCount: direction == Axis.horizontal ? 2 : 1,
          //   crossAxisSpacing: Insets.s,
          //   mainAxisSpacing: Insets.s,
          //   children: [
          //     UiTextField(
          //       formControlName: PassportForm.serialAndNumberPassport,
          //       label: BonusesI18n.passportSeriesAndNumber,
          //       required: true,
          //     ),
          //     UiDateTimePicker(
          //       firstDate: DateTime(1900, 12, 12),
          //       lastDate: DateTime.now(),
          //       margin: EdgeInsets.zero,
          //       formControlName: PassportForm.dateOfIssue,
          //       fillColor: context.color.surface.surfaceContainerLow,
          //       isRequired: true,
          //       label: BonusesI18n.dateOfIssue,
          //     ),
          //   ],
          // ),
          const SizedBox(height: Insets.s),
          UiTextField(
            formControlName: PassportForm.issuedBy,
            label: BonusesI18n.issuedBy,
            required: true,
          ),
          const SizedBox(height: Insets.s),
          UiTextField(
            formControlName: PassportForm.registrationAddress,
            label: BonusesI18n.registrationAddress,
            required: true,
          ),
        ],
      ),
    );
  }

  Widget _buildFileDataCard(
    BuildContext context,
    Axis direction,
  ) {
    final fields = [
      _dropFileField(
        context,
        PassportForm.firstPagePassportScan,
        BonusesI18n.firstPagePassportScan,
      ),
      _dropFileField(
        context,
        PassportForm.registrationPagePassportScan,
        BonusesI18n.registrationPagePassportScan,
      ),
    ];

    return UiCard(
      padding: const EdgeInsets.all(Insets.xl),
      borderRadius: const BorderRadius.all(Radius.circular(Insets.l)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            BonusesI18n.fileTitle,
            style: context.text.title.medium,
          ),
          const SizedBox(height: Insets.l),
          // AlignedGridView.count(
          //   shrinkWrap: true,
          //   crossAxisCount: direction == Axis.horizontal ? 2 : 1,
          //   mainAxisSpacing: Insets.s,
          //   crossAxisSpacing: Insets.l,
          //   itemCount: fields.length,
          //   itemBuilder: (context, index) => fields[index],
          // ),
        ],
      ),
    );
  }

  Widget _dropFileField(
    BuildContext context,
    String formControlName,
    String labelText,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(labelText, style: context.text.title.small),
        const SizedBox(height: Insets.m),
        UiAprwDropFileField(
          formControlName: formControlName,
          type: FileType.image,
          label: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                BonusesI18n.fileFieldTitle,
                style: context.text.label.large,
              ),
              const SizedBox(height: Insets.xs),
              Text(
                BonusesI18n.fileFieldFormats,
                style: context.text.label.medium.copyWith(
                  color: context.color.surface.outline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
