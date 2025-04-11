import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart' as intl;
import 'package:opo_ui_kit_r/ui_kit.dart';
import 'package:url_launcher/url_launcher.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit({
    required this.appInfo,
    required this.deviceInfo,
    required this.getBiometricSupportModel,
    required this.getGlobalAuthSettings,
    required this.subscriptAuthEventUseCase,
    required this.setBiometrySettingUseCase,
    required this.getAuthUseCase,
    required this.setLocalAuthUseCase,
    required AuthManager<AuthenticatedUser> authManager,
    required DialogService dialogService,
  })  : _authManager = authManager,
        _dialogService = dialogService,
        super(
          SettingsState.current(
            appInfo: appInfo,
            deviceInfo: deviceInfo,
          ),
        ) {
    getVersions();
    subscriptAuthEventUseCase(refresh);
  }

  final DialogService _dialogService;

  final AuthManager<AuthenticatedUser> _authManager;

  final AppInfoModel appInfo;

  final DeviceInfoModel deviceInfo;

  final GetBiometricSupportModel getBiometricSupportModel;

  final GetGlobalAuthSettingsUseCase getGlobalAuthSettings;

  final SubscribeAuthEventUseCase subscriptAuthEventUseCase;

  final SetBiometrySettingUseCase setBiometrySettingUseCase;

  final SetLocalAuthUseCase setLocalAuthUseCase;

  final GetAuthUseCase getAuthUseCase;

  Future<void> refresh() async {
    final isAuth = await getAuthUseCase(NoParams());

    final globalAuthSettings = await getGlobalAuthSettings(NoParams());

    bool? useBiometric = false;

    if (globalAuthSettings.useBiometric == false) {
      useBiometric = null;
    } else {
      final biometricSupportModel = await getBiometricSupportModel(NoParams());
      if (biometricSupportModel.status == BiometricStatus.available) {
        useBiometric = biometricSupportModel.useBiometric ?? false;
      }
    }

    if (isAuth) {
      emit(
        state.copyWith(
          useBiometric: useBiometric,
          useLocalAuth: globalAuthSettings.useLocalAuth,
        ),
      );
    } else {
      emit(
        state.copyWith(
          locale: null,
          appThemeMode: null,
          useBiometric: useBiometric,
          useLocalAuth: globalAuthSettings.useLocalAuth,
        ),
      );
    }
  }

  void setTheme(AppThemeMode? mode) {
    emit(state.copyWith(appThemeMode: mode));
  }

  void setLocale(Locale? locale) {
    emit(state.copyWith(locale: locale));
  }

  Future<void> setBiometry({required bool value}) async {
    await setBiometrySettingUseCase(value);
    emit(state.copyWith(useBiometric: value));
  }

  Future<void> setUseLocalAuth({required bool value}) async {
    emit(state.copyWith(useLocalAuth: value));

    await setLocalAuthUseCase(value);
  }

  Future<void> getVersions() async {}

  Future<void> signOut() async {
    final result = await _dialogService.showDialog<bool>(
      child: UiConfirmDialog(
        title: SettingsI18n.signOutConfirmTitle,
        description: SettingsI18n.signOutConfirmDescription,
        noButtonText: SettingsI18n.signOutConfirmNoBtn,
        yesButtonText: SettingsI18n.signOutConfirmYesBtn,
      ),
    );

    if (result ?? false) {
      await _authManager.signOut();
    }
  }

  Future<void> deleteAccount() async {
    final result = await _dialogService.showDialog<bool>(
      child: UiConfirmDialog(
        title: SettingsI18n.deleteAccountConfirmTitle,
        description: SettingsI18n.deleteAccountConfirmDescription,
        noButtonText: SettingsI18n.deleteAccountConfirmNoBtn,
        yesButtonText: SettingsI18n.deleteAccountConfirmYesBtn,
      ),
    );

    if (result ?? false) {
      final deleteResult = await _authManager.deleteProfile();

      await deleteResult.fold((l) {}, (r) async {
        await _dialogService.showDialog<bool>(
          child: UiCommonDialog(
            body: Text(SettingsI18n.deleteAccountSuccessTitle),
          ),
        );

        await _authManager.signOut(remote: false);
      });
    }
  }

  Future<void> onPressedSupport(String email) async {
    await launchUrl(
      Uri(
        scheme: 'mailto',
        path: email,
        // query: encodeQueryParameters(<String, String>{
        //   'subject': 'Example Subject & Symbols are allowed!',
        // }),
      ),
    );
  }
}
