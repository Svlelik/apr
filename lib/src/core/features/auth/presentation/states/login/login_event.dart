part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;

  const factory LoginEvent.cleared() = _Cleared;

  const factory LoginEvent.signIn() = _SignIn;
  
  const factory LoginEvent.unBlock() = _UnBlock;
}
