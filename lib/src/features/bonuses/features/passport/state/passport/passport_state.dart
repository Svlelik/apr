part of 'passport_bloc.dart';

@freezed
class PassportState with _$PassportState {
  const factory PassportState.initial({
    @Default(StateStatus.pure) StateStatus status,
    @Default(true) bool formIsEdit,
    String? error,
    PassportForm? infoForm,
  }) = _Initial;
}
