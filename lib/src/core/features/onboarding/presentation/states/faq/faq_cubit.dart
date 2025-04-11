import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_cubit.freezed.dart';
part 'faq_state.dart';

class FaqCubit extends Cubit<FaqState> {
  FaqCubit({
    required FaqRepository repository,
  })  : _repository = repository,
        super(const FaqState());

  final FaqRepository _repository;

  Future<void> init() async {
    await getFaq();
  }

  Future<void> getFaq() async {
    emit(state.copyWith(status: StateStatus.fetchingInProgress));

    final result = await _repository.getFaq();

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
          faqResponse: response,
          status: StateStatus.fetchingSuccess,
        ),
      );
    });
  }
}
