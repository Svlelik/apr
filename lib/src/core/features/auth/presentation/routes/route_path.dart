abstract class AuthRoutePath {
  static const String accountBlocked = '/account-blocked';
  static const String support = '/support';
  static const String cookiesPolicy = '/cookies-policy';
  static const String privacyPolicy = '/privacy-policy';
  static const String initial = '/auth';
  static const String login = '/login';
  static const String signIn = 'sign-in';
  static const String otp = 'otp';
  static const String pinCode = 'pin-code';
  static const String biometry = 'biometry';

  static const String signInFullPath = '$initial/$signIn';
  static const String otpFullPath = '$initial/$signIn/$otp';
  static const String pinCodeFullPath = '$initial/$pinCode';
  static const String biometryFullPath = '$initial/$biometry';
}
