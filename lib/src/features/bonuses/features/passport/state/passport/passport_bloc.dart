import 'package:apr/src/core/_core.dart';
import 'package:apr/src/features/bonuses/_bonuses.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'passport_bloc.freezed.dart';
part 'passport_event.dart';
part 'passport_state.dart';

class PassportBloc extends Bloc<PassportEvent, PassportState> {
  PassportBloc() : super(const PassportState.initial()) {
    on<_Started>(_initial);
  }

  Future<void> _initial(_Started event, Emitter<PassportState> emit) async {
    if (state.infoForm == null) {
      final infoForm = PassportForm();

      await infoForm.init();

      emit(
        state.copyWith(
          infoForm: infoForm,
          status: StateStatus.ready,
          formIsEdit: true,
        ),
      );
    } else {
      return;
    }
  }
}
