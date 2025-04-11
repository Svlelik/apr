import 'package:apr/src/core/_core.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_cubit.freezed.dart';
part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit(this.mocked) : super(const MainState());

  final bool mocked;

  Future<void> init() async {
    emit(state.copyWith(status: StateStatus.fetchingInProgress));

    emit(state.copyWith(status: StateStatus.fetchingSuccess, isDemo: mocked));
  }
}
