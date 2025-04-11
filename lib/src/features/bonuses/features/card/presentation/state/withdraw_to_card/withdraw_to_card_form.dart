part of 'withdraw_to_card_bloc.dart';

class WithdrawToCardForm extends FormWorker<WithdrawToCardFormInitParams> {
  static const String firstName = 'firstName';
  static const String surname = 'surname';
  static const String lastName = 'lastName';
  static const String cardNumber = 'cardNumber';
  static const String withdrawalAmount = 'withdrawalAmount';
  static const String approvalPdn = 'approvalPdn';
  static const String approvalOfferCalculationsByCard =
      'approvalOfferCalculationsByCard';
  static const String approvalPartnerList = 'approvalPartnerList';

  static const String cyrillicErrorCode = 'cyrillic_error';

  @override
  // ignore: avoid_renaming_method_parameters
  Future<FormGroup> init([WithdrawToCardFormInitParams? params]) async {
    final minSumCard = params!.pointsConfig!.minSumCard;
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
        cardNumber: FormControl<String>(
          validators: [
            Validators.required,
            Validators.creditCard,
          ],
        ),
        withdrawalAmount: FormControl<int>(
          validators: [
            Validators.required,
            Validators.number(allowNegatives: false),
            _CustomAmountValidator(
              userPoints: params.userPoints,
              availableSpendAmount: params.availableSpendAmount,
              minSumCard: minSumCard,
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
class WithdrawToCardFormInitParams with _$WithdrawToCardFormInitParams {
  const factory WithdrawToCardFormInitParams({
    required AuthenticatedUser profile,
    required int userPoints,
    required int availableSpendAmount,
    PointsConfig? pointsConfig,
  }) = _WithdrawToCardFormInitParams;
}

class _CustomAmountValidator extends Validator<int> {
  const _CustomAmountValidator({
    required this.minSumCard,
    required this.userPoints,
    required this.availableSpendAmount,
    required this.maxSumTransaction,
  }) : super();

  final int minSumCard;
  final int userPoints;
  final int availableSpendAmount;
  final int maxSumTransaction;

  @override
  Map<String, dynamic>? validate(AbstractControl<int> control) {
    if (control.value == null) return {'required': true};

    return {
      'min_sum_card_error': control.value! <= minSumCard,
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
            WithdrawToCardForm.cyrillicErrorCode:
                !_cyrillicRegular.hasMatch(control.value!),
          }
        : <String, dynamic>{};

    return errors..removeWhere((key, value) => value == false);
  }
}
