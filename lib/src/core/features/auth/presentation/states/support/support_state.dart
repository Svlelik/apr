part of 'support_bloc.dart';

@freezed
class SupportState with _$SupportState {
  const factory SupportState({
    @Default(StateStatus.pure) StateStatus status,
    @Default(AuthenticatedUser.empty) AuthenticatedUser profile,
    String? error,
    SupportForm? form,
  }) = _Initial;
}
