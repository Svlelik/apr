part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({@Default(false) bool isFormReady}) =
      _Initial;

  const factory LoginState.loading() = _Loading;

  const factory LoginState.failure(Failure error) = _Failure;

  const factory LoginState.success() = _Success;

  const factory LoginState.block(Duration value) = _Block;
}
