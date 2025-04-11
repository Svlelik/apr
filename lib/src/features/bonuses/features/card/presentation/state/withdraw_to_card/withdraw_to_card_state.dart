part of 'withdraw_to_card_bloc.dart';

@freezed
class WithdrawToCardState with _$WithdrawToCardState {
  const factory WithdrawToCardState({
    @Default(null) String? error,
    WithdrawToCardForm? form,
    PointsConfig? pointsConfig,
    @Default(null) int? userPoints,
    @Default(null) int? availableSpendAmount,
    @Default(false) bool addSpendingInProcess,
    @Default(false) bool addSpendingSuccess,
  }) = _WithdrawToCardState;
}
