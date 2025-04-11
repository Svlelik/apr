part of 'withdraw_to_card_bloc.dart';

@freezed
class WithdrawToCardEvent with _$WithdrawToCardEvent {
  const factory WithdrawToCardEvent.init({
    required AuthenticatedUser profile,
  }) = _Init;

  const factory WithdrawToCardEvent.addSpending() = _AddSpending;
}
