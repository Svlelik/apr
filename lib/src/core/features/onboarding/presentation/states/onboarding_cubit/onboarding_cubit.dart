import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/onboarding/_onboarding.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_cubit.freezed.dart';
part 'onboarding_cubit.g.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit({
    required OnboardingRepository repository,
  })  : _repository = repository,
        super(const OnboardingState.initial());

  final OnboardingRepository _repository;

  Future<void> init() async {
    await getOnboarding();
  }

  Future<void> getOnboarding() async {
    emit(state.copyWith(status: StateStatus.fetchingInProgress));

    final result = await _repository.getOnboarding();

    result.fold((error) {
      emit(
        state.copyWith(
          status: StateStatus.fetchingFailure,
          error: error.getLocalizedString(),
        ),
      );
    }, (response) {
      emit(
        state.copyWith(
          onboarding: response,
          status: StateStatus.fetchingSuccess,
        ),
      );
    });
  }
}
