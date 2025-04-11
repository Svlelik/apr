import 'package:apr/src/core/utils/_utils.dart';
import 'package:apr/src/features/bonuses/features/_features.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class LoginForm extends FormWorker<void> {
  static const String phone = 'phone';
  static const String isApprovalPdn = 'is_approval_pdn';
  static const String isApprovalParticipation = 'is_approval_participation';

  late final FormControl<String> phoneControl;
  late final FormControl<bool> isApprovalPdnControl;
  late final FormControl<bool> isApprovalParticipationControl;

  @override
  Future<FormGroup> init([void initialValue]) async {
    phoneControl = FormControl<String>(
      validators: [
        Validators.required,
        Validators.pattern(
          PhoneValidation.patternPhoneOperator,
          validationMessage: PhoneI18n.operatorError,
        ),
        Validators.pattern(
          PhoneValidation.patternPhoneNumber,
          validationMessage: PhoneI18n.fieldPhoneFormatError,
        ),
      ],
    );
    isApprovalPdnControl = FormControl<bool>(
      validators: [Validators.required],
    );
    isApprovalParticipationControl = FormControl<bool>(
      validators: [Validators.required],
    );

    return form = FormGroup({
      phone: phoneControl,
      isApprovalPdn: isApprovalPdnControl,
      isApprovalParticipation: isApprovalParticipationControl,
    });
  }
}
