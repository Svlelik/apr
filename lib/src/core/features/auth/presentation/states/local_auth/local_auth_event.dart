part of 'local_auth_bloc.dart';

@freezed
class LocalAuthEvent with _$LocalAuthEvent {
  const factory LocalAuthEvent.started() = _Started;

  const factory LocalAuthEvent.createPinCode(String code) = _CreatePinCode;

  const factory LocalAuthEvent.enterPinCode(String code) = _EnterPinCode;

  const factory LocalAuthEvent.authByBiometric({
    @Default(true) bool useBiometry,
  }) = _AuthByBiometric;

  const factory LocalAuthEvent.resetPinCode() = _ResetPinCode;
}
