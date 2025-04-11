import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class SupportForm extends FormWorker<String> {
  static const String email = 'email';
  static const String message = 'message';
  static const String file = 'file';

  @override
  Future<FormGroup> init([String? initialValue]) async {
    return form = FormGroup(
      {
        SupportForm.email: FormControl<String>(
          value: initialValue,
          validators: [
            Validators.required,
            Validators.email,
          ],
        ),
        SupportForm.message: FormControl<String>(
          validators: [
            Validators.required,
            Validators.maxLength(2000),
          ],
        ),
        SupportForm.file: FormControl<XFile>(),
      },
    );
  }
}
