import 'package:opo_ui_kit_r/reactive_forms.dart';

const String _patternPhone =
    r'''^(?:\+?7|8)?(?:[\s\-(_]+)?(\d{3})(?:[\s\-_)]+)?(\d{3})(?:[\s\-_]+)?(\d{2})(?:[\s\-_]+)?(\d{2})$''';

class CustomPhoneValidator extends Validator<PhoneNumber> {
  const CustomPhoneValidator({
    this.validationMessage = ValidationMessage.pattern,
  }) : super();

  final String validationMessage;

  @override
  Map<String, dynamic>? validate(AbstractControl<PhoneNumber> control) {
    final bool hasMatch =
        RegExp(_patternPhone).hasMatch(control.value?.international ?? '');

    if (hasMatch) {
      return null;
    }

    return {validationMessage: ''};
  }
}
