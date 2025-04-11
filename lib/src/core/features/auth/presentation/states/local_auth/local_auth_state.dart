part of 'local_auth_bloc.dart';

@freezed
class LocalAuthState with _$LocalAuthState {
  const factory LocalAuthState.initial() = _LocalAuthInitial;

  const factory LocalAuthState.success({
    BiometricSupportModel? biometricSupportModel,
  }) = _LocalAuthSuccess;

  const factory LocalAuthState.createPin({
    String? error,
    @Default(false) bool confirm,
    @Default(4) int length,
    @Default(StateStatus.pure) StateStatus status,
  }) = _LocalAuthCreatePin;

  const factory LocalAuthState.enterPin({
    required BiometricSupportModel biometricSupportModel,
    String? error,
    @Default(4) int length,
    @Default(0) int errorCount,
    @Default(StateStatus.pure) StateStatus status,
  }) = _LocalAuthEnterPin;

  const factory LocalAuthState.bioSuccess({
    BiometricSupportModel? biometricSupportModel,
  }) = _LocalAuthBioSuccess;
}
