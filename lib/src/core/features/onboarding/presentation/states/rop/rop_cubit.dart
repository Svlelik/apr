import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rop_cubit.freezed.dart';
part 'rop_cubit.g.dart';
part 'rop_state.dart';

class RopCubit extends Cubit<RopState> {
  RopCubit({
    required RopRepository repository,
  })  : _repository = repository,
        super(const RopState.initial());

  final RopRepository _repository;

  Future<void> init() async {
    await getRop();
  }

  Future<void> getRop() async {
    emit(state.copyWith(status: StateStatus.fetchingInProgress));

    final result = await _repository.getRop();

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
          ropResponse: response,
          status: StateStatus.fetchingSuccess,
        ),
      );
    });
  }
}
