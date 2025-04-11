part of 'change_pin_code_cubit.dart';

@freezed
class ChangePinCodeState with _$ChangePinCodeState {
  const factory ChangePinCodeState.initial() = _ChangePinCodeInitial;

  const factory ChangePinCodeState.success() = _ChangePinCodeSuccess;

  const factory ChangePinCodeState.enterPin({
    String? error,
    @Default(4) int length,
    @Default(StateStatus.pure) StateStatus status,
  }) = _ChangePinCodeEnterPin;

  const factory ChangePinCodeState.createPin({
    String? error,
    @Default(false) bool confirm,
    @Default(4) int length,
    @Default(StateStatus.pure) StateStatus status,
  }) = _ChangePinCodeCreatePin;

  factory ChangePinCodeState.fromJson(Object? json) =>
      _$ChangePinCodeStateFromJson(json! as Map<String, dynamic>);

  const ChangePinCodeState._();

  @override
  Map<String, dynamic> toJson();
}
