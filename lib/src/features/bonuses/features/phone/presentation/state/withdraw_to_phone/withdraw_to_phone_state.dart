part of 'withdraw_to_phone_bloc.dart';

@freezed
class WithdrawToPhoneState with _$WithdrawToPhoneState {
  const factory WithdrawToPhoneState({
    @Default(null) String? error,
    WithdrawToPhoneForm? form,
    PointsConfig? pointsConfig,
    @Default(null) int? userPoints,
    @Default(null) int? availableSpendAmount,
    @Default(false) bool addSpendingInProcess,
    @Default(false) bool addSpendingSuccess,
    @Default([]) List<MobileOperator> operators,
  }) = _WithdrawToPhoneState;
}
