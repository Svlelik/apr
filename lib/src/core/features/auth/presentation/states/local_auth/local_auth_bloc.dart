import 'dart:async';

import 'package:apr/src/core/_core.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_auth_bloc.freezed.dart';
part 'local_auth_event.dart';
part 'local_auth_state.dart';

class LocalAuthBloc extends Bloc<LocalAuthEvent, LocalAuthState> {
  LocalAuthBloc({
    required CheckLocalAuthUseCase checkLocalAuthUseCase,
    required SetPinCodeUseCase setPinCodeUseCase,
    required CheckPinCodeUseCase checkPinCodeUseCase,
    required SetBiometryUseCase setBiometryUseCase,
    required CheckBiometryUseCase checkBiometryUseCase,
    required GetBiometricSupportModel getBiometricSupportModel,
    required AuthManager<AuthenticatedUser> authManager,
  })  : _checkLocalAuthUseCase = checkLocalAuthUseCase,
        _setPinCodeUseCase = setPinCodeUseCase,
        _checkPinCodeUseCase = checkPinCodeUseCase,
        _setBiometryUseCase = setBiometryUseCase,
        _checkBiometryUseCase = checkBiometryUseCase,
        _getBiometricSupportModel = getBiometricSupportModel,
        _authManager = authManager,
        super(const _LocalAuthInitial()) {
    on<_Started>(_started);
    on<_CreatePinCode>(_createPinCode);
    on<_EnterPinCode>(_enterPinCode);
    on<_AuthByBiometric>(_authByBiometric);
    on<_ResetPinCode>(_resetPinCode);
  }

  final AuthManager<AuthenticatedUser> _authManager;

  final CheckLocalAuthUseCase _checkLocalAuthUseCase;

  final SetPinCodeUseCase _setPinCodeUseCase;

  final CheckPinCodeUseCase _checkPinCodeUseCase;

  final SetBiometryUseCase _setBiometryUseCase;

  final CheckBiometryUseCase _checkBiometryUseCase;

  final GetBiometricSupportModel _getBiometricSupportModel;

  String pin1 = '';
  String pin2 = '';

  Future<void> _started(_Started event, Emitter<LocalAuthState> emit) async {
    final result = await _checkLocalAuthUseCase(NoParams());

    await result.fold((failure) => null, (localAuthResult) async {
      switch (localAuthResult) {
        case LocalAuthResult.locked:
          final biometricSupportModel =
              await _getBiometricSupportModel(NoParams());

          emit(
            LocalAuthState.enterPin(
              length: AppConstants.pinCodeLength,
              biometricSupportModel: biometricSupportModel,
            ),
          );

          if (_authManager.useBiometry ?? false) {
            unawaited(_checkBiometryUseCase(CheckBiometryUseCaseParam()));
          }

        case LocalAuthResult.unlocked:
          emit(
            LocalAuthState.success(
              biometricSupportModel:
                  await _getBiometricSupportModel(NoParams()),
            ),
          );
        case LocalAuthResult.notAvailable:
          emit(
            LocalAuthState.success(
              biometricSupportModel:
                  await _getBiometricSupportModel(NoParams()),
            ),
          );
        case LocalAuthResult.notInitialized:
          emit(const LocalAuthState.createPin());
      }
    });
  }

  Future<void> _createPinCode(
    _CreatePinCode event,
    Emitter<LocalAuthState> emit,
  ) async {
    if (pin1.isEmpty && pin2.isEmpty) {
      if (event.code.length == AppConstants.pinCodeLength) {
        pin1 = event.code;
        await _authManager.setPinCode(pin1);
        emit(
          LocalAuthState.createPin(
            confirm: true,
            length: AppConstants.pinCodeLength,
          ),
        );
      } else {
        emit(
          LocalAuthState.createPin(
            error: AuthI18n.pinCodeMustContain(4),
            length: AppConstants.pinCodeLength,
            status: StateStatus.fetchingFailure,
          ),
        );
      }

      return;
    }

    if (pin1.isNotEmpty && pin2.isEmpty) {
      if (event.code.length != AppConstants.pinCodeLength) {
        emit(
          LocalAuthState.createPin(
            error: AuthI18n.pinCodeMustContain(4),
            confirm: true,
            length: AppConstants.pinCodeLength,
          ),
        );
        return;
      }

      if (pin1 != event.code) {
        emit(
          LocalAuthState.createPin(
            error: AuthI18n.pinCodesDoNotMatch,
            length: AppConstants.pinCodeLength,
            status: StateStatus.fetchingFailure,
            confirm: true,
          ),
        );

        await Future<void>.delayed(const Duration(seconds: 1));

        emit(
          LocalAuthState.createPin(
            length: AppConstants.pinCodeLength,
          ),
        );

        pin1 = '';
        pin2 = '';

        return;
      }

      pin2 = event.code;

      await _setBiometryUseCase(NoParams());

      unawaited(_setPinCodeUseCase(pin1));

      emit(
        LocalAuthState.success(
          biometricSupportModel: await _getBiometricSupportModel(NoParams()),
        ),
      );
    }
  }

  Future<void> _enterPinCode(
    _EnterPinCode event,
    Emitter<LocalAuthState> emit,
  ) async {
    final result = await _checkPinCodeUseCase(
      CheckPinCodeUseCaseParams(
        code: event.code,
        blockIfError: state.maybeWhen(
          orElse: () => false,
          enterPin: (
            BiometricSupportModel biometricSupportModel,
            String? error,
            int length,
            int errorCount,
            StateStatus status,
          ) {
            return errorCount == AppConstants.pinCodeAttempts - 1;
          },
        ),
      ),
    );

    await result.fold((l) => null, (response) async {
      if (!response) {
        await state.maybeWhen(
          orElse: () {},
          enterPin: (
            BiometricSupportModel biometricSupportModel,
            String? error,
            int length,
            int errorCount,
            StateStatus status,
          ) async {
            emit(
              LocalAuthState.enterPin(
                biometricSupportModel: biometricSupportModel,
                error: AuthI18n.invalidPin,
                length: length,
                errorCount: errorCount + 1,
                status: StateStatus.fetchingFailure,
              ),
            );

            await Future<void>.delayed(const Duration(seconds: 1));

            emit(
              LocalAuthState.enterPin(
                biometricSupportModel: biometricSupportModel,
                length: length,
                errorCount: errorCount + 1,
              ),
            );
          },
        );
      }
    });
  }

  Future<void> _authByBiometric(
    _AuthByBiometric event,
    Emitter<LocalAuthState> emit,
  ) async {
    if (event.useBiometry) {
      final success = await _checkBiometryUseCase(
        CheckBiometryUseCaseParam(),
      );
      if (success) {
        emit(const LocalAuthState.bioSuccess());
      }
    } else {
      _authManager.useBiometry = false;

      emit(const LocalAuthState.bioSuccess());
    }
  }

  Future<void> _resetPinCode(
    _ResetPinCode event,
    Emitter<LocalAuthState> emit,
  ) async {
    _authManager.isSetOTP = false;

    await _authManager.removePinCode();
  }
}
