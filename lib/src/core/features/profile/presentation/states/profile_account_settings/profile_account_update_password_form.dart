import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class ProfileAccountUpdatePasswordForm extends FormWorker<void> {
  bool isReady = false;

  static const String currentPassword = 'password_prev';
  static const String newPassword = 'password_new';
  static const String confirmNewPassword = 'confirm_password_new';

  final passwordRegExp = RegExp(
    r'''^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[~!?@#\$%\^&*_\-\+\(\)\[\]\{\}><\/\\|"'\.])[A-Za-zА-яа-я\d~!?@#\$%\^&*_\-\+\(\)\[\]\{\}><\/\\|"'\.]+$''',
  );

  @override
  Future<FormGroup> init([void initialValue]) async {
    form = FormGroup(
      {
        currentPassword: FormControl<String>(),
        newPassword: FormControl<String>(
          validators: [
            Validators.required,
            Validators.minLength(8),
            Validators.pattern(passwordRegExp),
          ],
        ),
        confirmNewPassword: FormControl<String>(
          validators: [
            Validators.required,
            Validators.minLength(8),
            Validators.pattern(passwordRegExp),
          ],
        ),
      },
      validators: [
        const MustMatchValidator(
          newPassword,
          confirmNewPassword,
          true,
        ),
      ],
    );

    isReady = true;

    return form;
  }
}
