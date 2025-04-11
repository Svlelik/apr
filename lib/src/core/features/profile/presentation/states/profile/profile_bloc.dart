import 'dart:async';

import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends BaseBloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required ProfileRepository repository,
    required AuthManager<AuthenticatedUser> manager,
    required DialogService dialogService,
  })  : _repository = repository,
        _manager = manager,
        _dialogService = dialogService,
        super(const _Initial()) {
    on<_Started>(_init);
    on<_SignOut>(_signOut);
    on<_UpdateProfile>(_updateProfile);

    _profileSubscription = manager.user.listen((value) {
      add(const _UpdateProfile());
    });
  }

  late final StreamSubscription<AuthenticatedUser> _profileSubscription;

  final DialogService _dialogService;

  final ProfileRepository _repository;

  final AuthManager<AuthenticatedUser> _manager;

  Future<void> _init(_Started event, Emitter<ProfileState> emit) async {
    await _getProfile(event, emit);
  }

  Future<void> _getProfile(event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: StateStatus.fetchingInProgress));

    emit(
      state.copyWith(
        profile: _manager.user.value,
        status: StateStatus.ready,
      ),
    );
  }

  Future<void> _signOut(_SignOut event, Emitter<ProfileState> emit) async {
    final result = await _dialogService.showDialog<bool>(
      child: UiConfirmDialog(
        title: SettingsI18n.signOutConfirmTitle,
        description: SettingsI18n.signOutConfirmDescription,
        noButtonText: SettingsI18n.signOutConfirmNoBtn,
        yesButtonText: SettingsI18n.signOutConfirmYesBtn,
      ),
    );

    if (result ?? false) {
      await _manager.signOut();
    }
  }

  Future<void> _updateProfile(
    _UpdateProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(profile: _manager.user.value));
  }

  @override
  Future<void> close() async {
    await _profileSubscription.cancel();

    await super.close();
  }
}
