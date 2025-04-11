part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial({
    @Default(StateStatus.pure) StateStatus status,
    String? error,
    OnboardingModel? onboarding,
  }) = _OnboardingInitialState;

  factory OnboardingState.fromJson(Object? json) =>
      _$OnboardingStateFromJson(json! as Map<String, dynamic>);

  const OnboardingState._();

  @override
  Map<String, dynamic> toJson();
}
