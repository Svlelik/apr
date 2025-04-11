import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required AuthManager<AuthenticatedUser> manager,
  })  : _manager = manager,
        super(const _Initial()) {
    on<_Started>(_started);
    on<_UpdateProfile>(_updateProfile);

    _manager.addListener(onAuthManagerUpdate);
  }

  final AuthManager<AuthenticatedUser> _manager;

  Future<void> _started(_Started event, Emitter<HomeState> emit) async {
    emit(state.copyWith(user: _manager.user.value));
  }

  Future<void> _updateProfile(
    _UpdateProfile event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(user: _manager.user.value));
  }

  void onAuthManagerUpdate() {
    add(const _UpdateProfile());
  }

  @override
  Future<void> close() {
    _manager.removeListener(onAuthManagerUpdate);

    return super.close();
  }
}
