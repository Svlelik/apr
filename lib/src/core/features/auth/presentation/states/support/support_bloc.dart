import 'package:apr/src/core/_core.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_bloc.freezed.dart';
part 'support_event.dart';
part 'support_state.dart';

class SupportBloc extends Bloc<SupportEvent, SupportState> {
  SupportBloc({
    required AuthManager<AuthenticatedUser> manager,
  })  : _manager = manager,
        super(const _Initial()) {
    on<_Started>(_started);
    on<_Send>(_send);
  }

  final AuthManager<AuthenticatedUser> _manager;

  Future<void> _started(_Started event, Emitter<SupportState> emit) async {
    final String? email = _manager.user.value.email;
    final form = SupportForm();

    await form.init(email);

    emit(
      state.copyWith(
        form: form,
        profile: _manager.user.value,
        status: StateStatus.fetchingSuccess,
      ),
    );
  }

// TODO(afurmanchuk): Сделать отправку на бэк
  Future<void> _send(_Send event, Emitter<SupportState> emit) async {}
}
