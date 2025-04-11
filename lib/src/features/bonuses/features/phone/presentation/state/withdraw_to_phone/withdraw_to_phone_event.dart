part of 'withdraw_to_phone_bloc.dart';

@freezed
class WithdrawToPhoneEvent with _$WithdrawToPhoneEvent {
  const factory WithdrawToPhoneEvent.init({
    required AuthenticatedUser profile,
  }) = _Init;

  const factory WithdrawToPhoneEvent.addSpending() = _AddSpending;
}
