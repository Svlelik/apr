import 'package:apr/src/features/questionnaires/_questionnaires.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';

class QuestionFieldWidget extends StatelessWidget {
  const QuestionFieldWidget({
    required this.question,
    super.key,
  });
  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    if (question.controlType.isRadioList) {
      return QRadioListField(question: question);
    } else if (question.controlType.isMultiList) {
      return QMultiListField(question: question);
    } else if (question.controlType.isNumber) {
      return QNumberField(question: question);
    } else if (question.controlType.isText) {
      return QTextField(question: question);
    } else if (question.controlType.isDropdownList) {
      return QDropdownListField(question: question);
    } else if (question.controlType.isCheckBox) {
      return QCheckboxField(question: question);
    } else if (question.controlType.isSwitchItem) {
      return QSwitchField(question: question);
    } else if (question.controlType.isSegmentedButton) {
      return QSegmentedButtonField(question: question);
    } else if (question.controlType.isDropdownListMulti) {
      return QDropdownListMultiField(question: question);
    } else if (question.controlType.isInfo) {
      return QInfoField(question: question);
    } else if (question.controlType.isDate) {
      return QDateField(question: question);
    } else {
      return QUnknownField<void>(question: question);
    }
  }
}
