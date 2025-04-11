import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr/src/features/bonuses/features/_features.dart';
import 'package:opo_ui_kit_r/reactive_forms.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

class ProfileInfoForm extends FormWorker<AuthenticatedUser> {
  static const String email = 'email';
  static const String phone = 'phone';
  static const String lastName = 'last_name';
  static const String firstName = 'first_name';
  static const String birthday = 'birthday';
  static const String city = 'city_id';
  static const String region = 'region_id';
  static const String sex = 'sex_id';
  static const String adult = 'is_adult';
  static const String locality = 'locality';
  static const String middleName = 'middle_name';

  bool isReady = false;

  static const String fullNameRegExpPattern = r'^[а-яёА-ЯЁ]+(?:-[а-яёА-ЯЁ]+)*$';

  @override
  Future<FormGroup> init([AuthenticatedUser? initialValue]) async {
    final RegExp fullNameRegExp = RegExp(fullNameRegExpPattern);

    form = FormGroup(
      {
        ProfileInfoForm.email: FormControl<String>(
          value: initialValue?.email,
          validators: [
            Validators.required,
            Validators.email,
            Validators.maxLength(200),
          ],
        ),
        ProfileInfoForm.lastName: FormControl<String>(
          value: initialValue?.lastName,
          disabled: initialValue?.lastName != null,
          validators: [
            Validators.pattern(
              fullNameRegExp,
              validationMessage: ProfileI18n.onlyRussianLetters,
            ),
            Validators.required,
            Validators.maxLength(100),
          ],
        ),
        ProfileInfoForm.firstName: FormControl<String>(
          value: initialValue?.firstName,
          disabled: initialValue?.firstName != null,
          validators: [
            Validators.pattern(
              fullNameRegExp,
              validationMessage: ProfileI18n.onlyRussianLetters,
            ),
            Validators.required,
            Validators.maxLength(100),
          ],
        ),
        ProfileInfoForm.phone: FormControl<String>(
          value: initialValue?.phone,
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
        ),
        ProfileInfoForm.birthday: FormControl<DateTime>(
          value: initialValue?.birthday,
          disabled: initialValue?.birthday != null,
          validators: [
            Validators.required,
          ],
        ),
        ProfileInfoForm.city: FormControl<String>(
          value: initialValue?.city?.city ?? initialValue?.locality,
        ),
        ProfileInfoForm.region: FormControl<String>(
          value: initialValue?.region?.region,
          disabled: initialValue?.locality == null,
          validators: [
            if (initialValue?.locality != null) Validators.required,
          ],
        ),
        ProfileInfoForm.sex: FormControl<int>(
          value: initialValue?.sex?.id,
          disabled: initialValue?.sex != null,
          validators: [
            Validators.required,
          ],
        ),
        ProfileInfoForm.middleName: FormControl<String>(
          value: initialValue?.middleName,
          disabled: initialValue?.middleName != null,
          validators: [
            Validators.pattern(
              fullNameRegExp,
              validationMessage: ProfileI18n.onlyRussianLetters,
            ),
            Validators.maxLength(100),
          ],
        ),
        ProfileInfoForm.adult: FormControl<bool>(
          disabled: true,
          validators: [
            Validators.requiredTrue,
          ],
        ),
      },
    );

    isReady = true;

    return form;
  }

  Map<String, dynamic> getDifferences(AuthenticatedUser user) {
    final Map<String, dynamic> differences = {};

    final fields = {
      email: form.control(ProfileInfoForm.email).value,
      lastName: form.control(ProfileInfoForm.lastName).value,
      firstName: form.control(ProfileInfoForm.firstName).value,
      phone: form.control(ProfileInfoForm.phone).value,
      birthday: form.control(ProfileInfoForm.birthday).value,
      sex: form.control(ProfileInfoForm.sex).value,
      middleName: form.control(ProfileInfoForm.middleName).value,
    };

    final userFields = {
      email: user.email,
      lastName: user.lastName,
      firstName: user.firstName,
      phone: user.phone,
      birthday: user.birthday,
      sex: user.sex?.id,
      middleName: user.middleName,
    };

    fields.forEach((key, formValue) {
      if (formValue != userFields[key]) {
        differences[key] = formValue;
      }
    });

    differences.addAll({
      city: form.control(ProfileInfoForm.city).value,
      region: form.control(ProfileInfoForm.region).value,
    });

    return differences;
  }

  void toggleLocalityCity({String? locality, String? city}) {
    if (locality != null) {
      form.control(ProfileInfoForm.city).updateValue(
            locality,
            emitEvent: false,
          );
      form.control(ProfileInfoForm.region).setValidators(
        [
          Validators.required,
        ],
        emitEvent: false,
      );
      form.control(ProfileInfoForm.region).markAsEnabled();
    } else if (city != null) {
      form.control(ProfileInfoForm.region).markAsDisabled(emitEvent: false);
      form.control(ProfileInfoForm.region).setValidators(
        [],
        emitEvent: false,
      );
      form.control(ProfileInfoForm.city).updateValue(city, emitEvent: false);
    } else {
      form.control(ProfileInfoForm.region).markAsDisabled(emitEvent: false);
      form.control(ProfileInfoForm.region).setValidators([], emitEvent: false);
      form.control(ProfileInfoForm.region).updateValue(null);

      form.control(ProfileInfoForm.city).updateValue(null, emitEvent: false);
    }
  }
}
