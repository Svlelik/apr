import 'package:apr/src/core/_core.dart';
import 'package:apr/src/core/features/profile/_profile.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opo_ui_kit_r/ui_kit.dart';

part 'profile_account_settings_bloc.freezed.dart';
part 'profile_account_settings_event.dart';
part 'profile_account_settings_state.dart';

class ProfileAccountSettingsBloc
    extends Bloc<ProfileAccountSettingsEvent, ProfileAccountSettingsState> {
  ProfileAccountSettingsBloc({
    required ProfileRepository repository,
    required DialogService dialogService,
    required AuthManager<AuthenticatedUser> authManager,
  })  : _repository = repository,
        _dialogService = dialogService,
        _authManager = authManager,
        super(_Initial(form: ProfileAccountUpdatePasswordForm())) {
    on<_Started>(_init);
    on<_UpdatePassword>(_updatePassword);
    on<_DeleteAccount>(_deleteAccount);
  }

  final AuthManager<AuthenticatedUser> _authManager;
  final ProfileRepository _repository;
  final DialogService _dialogService;

  Future<void> _init(
    _Started event,
    Emitter<ProfileAccountSettingsState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.fetchingInProgress));

    await state.form.init();

    emit(state.copyWith(status: StateStatus.fetchingSuccess));
  }

  Future<void> _updatePassword(
    _UpdatePassword event,
    Emitter<ProfileAccountSettingsState> emit,
  ) async {
    if (state.form.isValid) {
      final result = await _repository.updatePassword(state.form.value);

      result.fold(
        (error) {
          state.form
              .getFormControl(ProfileAccountUpdatePasswordForm.currentPassword)
              ?.setErrors({error.message: true});
        },
        (r) {
          NotifyService.success(title: ProfileI18n.newPasswordSaver);
        },
      );
    }
  }

  Future<void> _deleteAccount(
    _DeleteAccount event,
    Emitter<ProfileAccountSettingsState> emit,
  ) async {
    final result = await _dialogService.showDialog<bool>(
      child: UiConfirmDialog(
        title: SettingsI18n.deleteAccountConfirmTitle,
        description: SettingsI18n.deleteAccountConfirmDescription,
        noButtonText: SettingsI18n.deleteAccountConfirmNoBtn,
        yesButtonText: SettingsI18n.deleteAccountConfirmYesBtn,
        horizontalButton: false,
      ),
    );

    if (result ?? false) {
      final result = await _repository.deleteProfile();

      result.fold(
        (error) {
          NotifyService.error(title: error.message);
        },
        (r) {
          _authManager.signOut();
        },
      );
    }
  }
}
