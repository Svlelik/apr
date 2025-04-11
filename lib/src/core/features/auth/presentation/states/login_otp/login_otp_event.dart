part of 'login_otp_bloc.dart';

@freezed
class LoginOtpEvent with _$LoginOtpEvent {
  const factory LoginOtpEvent.started() = _Started;

  const factory LoginOtpEvent.cleared() = _Cleared;

  const factory LoginOtpEvent.signIn(String code) = _SignIn;

  const factory LoginOtpEvent.requestOTP() = _RequestOTP;

  const factory LoginOtpEvent.repeat() = _Repeat;
}
