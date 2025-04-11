part of 'main_cubit.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(StateStatus.pure) StateStatus status,
    @Default(false) bool isDemo,
  }) = _Initial;
}
