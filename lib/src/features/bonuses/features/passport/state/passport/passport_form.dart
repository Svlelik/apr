import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class PassportForm extends FormWorker<AuthenticatedUser> {
  static const String lastName = 'last_name';
  static const String firstName = 'first_name';
  static const String middleName = 'middle_name';
  static const String birthday = 'birthday';
  static const String iin = 'iin';
  static const String serialAndNumberPassport = 'serialAndNumberPassport';
  static const String dateOfIssue = 'dateOfIssue';
  static const String issuedBy = 'issuedBy';
  static const String registrationAddress = 'registrationAddress';
  static const String consentPersonalData = 'consentPersonalData';
  static const String firstPagePassportScan = 'firstPagePassportScan';
  static const String registrationPagePassportScan =
      'registrationPagePassportScan';

  bool isReady = false;

  @override
  Future<FormGroup> init([AuthenticatedUser? initialValue]) async {
    final RegExp charValidationRegExpNoSpace = RegExp(r'^[А-Яа-яЁё–-]+$');
    final RegExp charValidationRegExp = RegExp(r'^[А-Яа-яЁё –-]+$');

    form = FormGroup(
      {
        PassportForm.lastName: FormControl<String>(
          value: initialValue?.lastName,
          disabled: initialValue?.lastName != null,
          validators: [
            Validators.pattern(
              charValidationRegExpNoSpace,
              validationMessage: ProfileI18n.patternError,
            ),
            Validators.required,
            Validators.maxLength(100),
          ],
        ),
        PassportForm.firstName: FormControl<String>(
          value: initialValue?.firstName,
          disabled: initialValue?.firstName != null,
          validators: [
            Validators.pattern(
              charValidationRegExpNoSpace,
              validationMessage: ProfileI18n.patternError,
            ),
            Validators.required,
            Validators.maxLength(100),
          ],
        ),
        PassportForm.birthday: FormControl<DateTime>(
          value: initialValue?.birthday,
          disabled: initialValue?.birthday != null,
          validators: [
            Validators.required,
          ],
        ),
        PassportForm.middleName: FormControl<String>(
          value: initialValue?.middleName,
          disabled: initialValue?.middleName != null,
          validators: [
            Validators.pattern(
              charValidationRegExp,
              validationMessage: ProfileI18n.patternError,
            ),
            Validators.maxLength(100),
          ],
        ),
        PassportForm.iin: FormControl<String>(
          // value: initialValue?.iin,
          // disabled: initialValue?.iin != null,
          validators: [
            Validators.number(),
          ],
        ),
        PassportForm.serialAndNumberPassport: FormControl<String>(
          // value: initialValue?.iin,
          // disabled: initialValue?.iin != null,
          validators: [
            Validators.number(),
          ],
        ),
        PassportForm.dateOfIssue: FormControl<DateTime>(
          // value: initialValue?.iin,
          // disabled: initialValue?.iin != null,
          validators: [
            Validators.required,
          ],
        ),
        PassportForm.registrationAddress: FormControl<String>(
          // value: initialValue?.iin,
          // disabled: initialValue?.iin != null,
          validators: [
            Validators.required,
          ],
        ),
        PassportForm.issuedBy: FormControl<String>(
          // value: initialValue?.iin,
          // disabled: initialValue?.iin != null,
          validators: [
            Validators.required,
          ],
        ),
        PassportForm.consentPersonalData: FormControl<bool>(
          // value: initialValue?.iin,
          // disabled: initialValue?.iin != null,
          validators: [
            Validators.required,
          ],
        ),
        PassportForm.firstPagePassportScan: FormControl<XFile>(
          // value: initialValue?.iin,
          // disabled: initialValue?.iin != null,
          validators: [
            Validators.required,
          ],
        ),
        PassportForm.registrationPagePassportScan: FormControl<XFile>(
          // value: initialValue?.iin,
          // disabled: initialValue?.iin != null,
          validators: [
            Validators.required,
          ],
        ),
      },
    );

    isReady = true;

    return form;
  }
}
