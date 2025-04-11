part of 'login_otp_bloc.dart';

@freezed
class LoginOtpState with _$LoginOtpState {
  const factory LoginOtpState({
    @Default(StateStatus.pure) StateStatus status,
    DateTime? timer,
    String? phone,
    Failure? error,
  }) = _Initial;

  const LoginOtpState._();

  String get formattedPhone {
    if (phone != null && phone!.isNotEmpty) {
      return formatPhoneNumber(phone!);
    }

    return '';
  }

  String formatPhoneNumber(String phone) {
    final pattern = RegExp(r'(\+7)(\d{3})(\d{3})(\d{2})(\d{2})');
    return phone.replaceAllMapped(pattern, (Match match) {
      return '${match[1]} (${match[2]}) ${match[3]}-${match[4]}-${match[5]}';
    });
  }
}
