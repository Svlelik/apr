part of 'withdraw_to_phone_bloc.dart';

class WithdrawToPhoneForm extends FormWorker<WithdrawToPhoneFormInitParams> {
  static const String firstName = 'firstName';
  static const String surname = 'surname';
  static const String lastName = 'lastName';
  static const String phoneNumber = 'phoneNumber';
  static const String mobileOperator = 'mobileOperator';
  static const String withdrawalAmount = 'withdrawalAmount';
  static const String approvalPdn = 'approvalPdn';
  static const String approvalOfferCalculationsByCard =
      'approvalOfferCalculationsByCard';
  static const String approvalPartnerList = 'approvalPartnerList';

  static const String cyrillicErrorCode = 'cyrillic_error';

  @override
  // ignore: avoid_renaming_method_parameters
  Future<FormGroup> init([WithdrawToPhoneFormInitParams? params]) async {
    final minSumMobile = params!.pointsConfig!.minSumMobile;
    final maxSumTransaction = params.pointsConfig!.maxSumTransaction;

    return form = FormGroup(
      {
        firstName: FormControl<String>(
          validators: [
            Validators.required,
            const _CyrillicCustomValidator(),
            Validators.equals(params.profile.firstName),
          ],
        ),
        surname: FormControl<String>(
          validators: [
            if (params.profile.middleName != null) ...[
              Validators.required,
              const _CyrillicCustomValidator(),
              Validators.equals(params.profile.middleName),
            ],
          ],
        ),
        lastName: FormControl<String>(
          validators: [
            Validators.required,
            const _CyrillicCustomValidator(),
            Validators.equals(params.profile.lastName),
          ],
        ),
        phoneNumber: FormControl<String>(
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
        mobileOperator: FormControl<MobileOperator>(
          validators: [
            Validators.required,
          ],
        ),
        withdrawalAmount: FormControl<int>(
          validators: [
            Validators.required,
            Validators.number(allowNegatives: false),
            _CustomAmountValidator(
              userPoints: params.userPoints,
              availableSpendAmount: params.availableSpendAmount,
              minSumMobile: minSumMobile,
              maxSumTransaction: maxSumTransaction,
            ),
          ],
        ),
        approvalPdn: FormControl<bool>(
          validators: [
            Validators.requiredTrue,
          ],
        ),
        approvalOfferCalculationsByCard: FormControl<bool>(
          validators: [
            Validators.requiredTrue,
          ],
        ),
        approvalPartnerList: FormControl<bool>(
          validators: [
            Validators.requiredTrue,
          ],
        ),
      },
    );
  }
}

@freezed
class WithdrawToPhoneFormInitParams with _$WithdrawToPhoneFormInitParams {
  const factory WithdrawToPhoneFormInitParams({
    required AuthenticatedUser profile,
    required int userPoints,
    required int availableSpendAmount,
    PointsConfig? pointsConfig,
  }) = _WithdrawToPhoneFormInitParams;
}

class _CustomAmountValidator extends Validator<int> {
  const _CustomAmountValidator({
    required this.minSumMobile,
    required this.userPoints,
    required this.availableSpendAmount,
    required this.maxSumTransaction,
  }) : super();

  final int minSumMobile;
  final int userPoints;
  final int availableSpendAmount;
  final int maxSumTransaction;

  @override
  Map<String, dynamic>? validate(AbstractControl<int> control) {
    if (control.value == null) return {'required': true};

    return {
      'min_sum_mobile_error': control.value! <= minSumMobile,
      'user_points_error': control.value! >= userPoints,
      'available_spend_amount': control.value! > availableSpendAmount,
      'max_sum_transaction_error': control.value! >= maxSumTransaction,
    }..removeWhere((key, value) => value == false);
  }
}

class _CyrillicCustomValidator extends Validator<String?> {
  const _CyrillicCustomValidator() : super();

  static final RegExp _cyrillicRegular = RegExp(r'^[А-Яа-яЁё]+$');

  @override
  Map<String, dynamic>? validate(AbstractControl<String?> control) {
    final errors = (control.value ?? '') != ''
        ? {
            WithdrawToPhoneForm.cyrillicErrorCode:
                !_cyrillicRegular.hasMatch(control.value!),
          }
        : <String, dynamic>{};

    return errors..removeWhere((key, value) => value == false);
  }
}
