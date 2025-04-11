import 'package:apr/src/core/_core.dart';
import 'package:apr_sdk/apr_sdk.dart';
// ignore: lines_longer_than_80_chars
// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_setters_without_getters

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

abstract class AuthManager<U> extends ChangeNotifier {
  AuthManager({
    required this.settings,
  });
  final AuthManagerSettings settings;

  bool get isRefreshing;

  BehaviorSubject<U> get user;

  bool get isAuth;

  bool get isSetOTP;

  set isSetOTP(bool value);

  bool get locked;

  bool get blocked;

  bool? get useBiometry;

  set useBiometry(bool? value);

  DateTime get otpTimer;

  String? get phone;

  set authenticated(bool value);

  void lock();

  void unlock();

  Future<void> block();

  Future<void> unblock();

  Future<Duration> getBlockTime();

  Future<void> init();

  Future<Either<Failure, DateTime>> requestOTP(String phoneValue);

  Future<Either<Failure, bool>> signInWithOTP(int code);

  Future<Either<Failure, bool>> signOut({bool remote = true});

  bool get isChecked;

  set isChecked(bool value);

  Future<bool> get hasPinCode;

  Future<void> setPinCode(String pinCode);

  Future<void> resetPinCode();

  Future<void> removePinCode();

  Future<bool> checkPinCode(String pinCode);

  Future<BiometricSupportModel> getBiometricSupportModel();

  Future<void> setUseBiometry(bool value);

  Future<void> setUseLocalAuth(bool value);

  Future<bool> checkBiometry();

  Future<Either<Failure, String>> deleteProfile();

  Future<Either<Failure, U>> verify();

  bool get mocked;

  void updateUser(U value);

  Future<void> refreshToken();
}

class AuthManagerImpl extends AuthManager<AuthenticatedUser> {
  AuthManagerImpl({
    required this.authRepository,
    required this.biometricRepository,
    required super.settings,
    this.demoUserRepository,
  });

  @override
  bool get isRefreshing => _isRefreshing;

  bool _isRefreshing = false;

  @override
  bool get mocked => _mocked;

  @override
  bool get isSetOTP => _isSetOTP;

  @override
  set isSetOTP(bool value) {
    _isSetOTP = value;

    notifyListeners();
  }

  bool _isSetOTP = false;

  @override
  bool? get useBiometry => _useBiometry;

  @override
  set useBiometry(bool? value) {
    _useBiometry = value;

    biometricRepository.setUseBiometric(value: value ?? false);

    notifyListeners();
  }

  bool? _useBiometry;

  final DemoUserRepository? demoUserRepository;

  final AuthRepository<AuthModel, AuthenticatedUser> authRepository;

  final BiometricRepository biometricRepository;

  final BehaviorSubject<AuthenticatedUser> _user =
      BehaviorSubject<AuthenticatedUser>.seeded(AuthenticatedUser.empty);

  @override
  DateTime otpTimer = DateTime.now();

  @override
  String phone = '';

  bool _authenticated = false;

  bool _mocked = false;

  bool _blocked = false;

  @override
  bool get blocked => _blocked;

  @override
  bool get isAuth {
    // final hasToken = await authRepository.hasAccessToken();

    // if (hasToken != _authenticated) {
    //   _authenticated = hasToken;
    //   notifyListeners();
    // }

    return _authenticated;
  }

  @override
  set authenticated(bool value) {
    _authenticated = value;
    notifyListeners();
  }

  bool _locked = true;

  @override
  bool get locked {
    // return false;
    if (!settings.useLocalAuth) {
      return false;
    } else {
      return _locked;
    }
  }

  @override
  void lock() {
    // if (kIsWeb) {
    //   return;
    // }

    _locked = true;

    notifyListeners();
  }

  @override
  void unlock() {
    _locked = false;

    notifyListeners();
  }

  @override
  Future<void> block() async {
    await authRepository
        .blocUser(DateTime.now().add(const Duration(seconds: 60)));

    _blocked = true;

    notifyListeners();
  }

  @override
  Future<void> unblock() async {
    await authRepository.unBlocUser();

    _blocked = false;

    notifyListeners();
  }

  @override
  Future<Duration> getBlockTime() async {
    final DateTime? value = await authRepository.getBlockTime();

    if (value != null) {
      if (value.difference(DateTime.now()).inSeconds > 0) {
        return value.difference(DateTime.now());
      }
    }

    return Duration.zero;
  }

  @override
  Future<void> init() async {
    final hasToken = await authRepository.hasAccessToken();
    final hasPinCode = await authRepository.hasPinCode();
    final DateTime? value = await authRepository.getBlockTime();

    if (value != null) {
      if (value.difference(DateTime.now()).inSeconds > 0) {
        _blocked = true;
      }
    }

    _authenticated = hasToken;

    settings.useLocalAuth = await authRepository.useLocalAuth();

    if (settings.useLocalAuth && !hasToken && !hasPinCode && !kIsWeb) {
      await signOut();

      authenticated = false;

      return;
    }

    final result = await authRepository.getCurrentUser();

    result.fold(
      (l) {
        _user.sink.add(AuthenticatedUser.empty);
      },
      (r) => _user.sink.add(r),
    );

    if (kIsWeb) {
      _authenticated = user.value.isAuthenticated;
    } else {
      _authenticated =
          user.value.isAuthenticated && await authRepository.hasPinCode();
    }

    _isSetOTP = _authenticated;

    if (user.value.isNotAuthenticated && _authenticated) {
      await signOut();
    }

    _useBiometry = kIsWeb ? false : await biometricRepository.useBiometric;

    if (user.value == AuthenticatedUser.demo) {
      _mocked = true;

      notifyListeners();
    }
  }

  @override
  Future<Either<Failure, DateTime>> requestOTP(String phoneValue) async {
    final result = await authRepository.requestOTP(phoneValue);

    return result.fold(Left.new, (r) {
      _user.sink.add(_user.value.updatePhone(phoneValue));

      otpTimer = r.timer;
      phone = phoneValue;

      return Right(r.timer);
    });
  }

  @override
  Future<Either<Failure, bool>> signInWithOTP(int code) async {
    final result = await authRepository.signInWithOTP(
      phone.replaceAll(RegExp('[() -]'), ''),
      code,
    );

    return result.fold(Left.new, (r) async {
      authenticated = true;

      _isSetOTP = true;

      notifyListeners();

      _user.sink.add(r);

      return const Right(true);
    });
  }

  @override
  BehaviorSubject<AuthenticatedUser> get user => _user;

  @override
  Future<Either<Failure, bool>> signOut({bool remote = true}) async {
    if (mocked) {
      await _clear();

      return const Right(true);
    }

    if (remote) {
      final result = await authRepository.signOut();

      return result.fold((failure) async {
        await _clear();

        authenticated = false;
        lock();

        return Left(failure);
      }, (success) async {
        await _clear();

        authenticated = false;
        lock();

        return Right(success);
      });
    } else {
      await _clear();

      authenticated = false;
      lock();

      return const Right(true);
    }
  }

  Future<void> _clear() async {
    phone = '';
    otpTimer = DateTime.now();

    await authRepository.deletePinCode();

    await authRepository.deleteAccessToken();

    await authRepository.deleteUseLocalAuth();

    await biometricRepository.deleteUseBiometric();

    _locked = true;

    _mocked = false;

    _useBiometry = null;

    _isSetOTP = false;

    authenticated = false;

    _user.sink.add(AuthenticatedUser.empty);
  }

  bool _isChecked = false;

  @override
  bool get isChecked {
    if (_isChecked == false) {
      _isChecked = true;
      return false;
    }
    return _isChecked;
  }

  @override
  set isChecked(bool value) {
    _isChecked = value;
  }

  @override
  Future<bool> get hasPinCode => authRepository.hasPinCode();

  @override
  Future<void> setPinCode(String pinCode) async {
    await authRepository.setPinCode(pinCode);
    _locked = false;
  }

  @override
  Future<bool> checkPinCode(String pinCode) {
    return authRepository.comparePinCode(pinCode);
  }

  @override
  Future<BiometricSupportModel> getBiometricSupportModel() async {
    if (!settings.useBiometric) {
      _useBiometry = false;

      return const BiometricSupportModel(
        useBiometric: false,
      );
    }

    final result = await biometricRepository.getBiometricModel();

    if (result.status == BiometricStatus.notAvailable) {
      _useBiometry = false;
    }

    return result;
  }

  @override
  Future<void> setUseBiometry(bool value) {
    notifyListeners();
    return biometricRepository.setUseBiometric(value: value);
  }

  @override
  Future<void> setUseLocalAuth(bool value) {
    return authRepository.setUseLocalAuth(value);
  }

  @override
  Future<bool> checkBiometry() async {
    return biometricRepository.authenticate();
  }

  @override
  Future<Either<Failure, AuthenticatedUser>> verify() async {
    /// Проверка на наличие обновление и другие проверки
    if (mocked) {
      _user.sink.add(AuthenticatedUser.demo);

      _mocked = true;

      notifyListeners();

      return Right(_user.value);
    }

    isChecked = true;

    final result = await authRepository.verify();

    return result.fold(Left.new, (user) {
      _user.add(user);

      _authenticated = true;

      notifyListeners();

      return Right(user);
    });
  }

  @override
  Future<void> removePinCode() {
    return authRepository.deletePinCode();
  }

  @override
  Future<void> resetPinCode() async {
    await removePinCode();

    _isSetOTP = false;

    notifyListeners();
  }

  @override
  void updateUser(AuthenticatedUser value) {
    _user.sink.add(value);

    notifyListeners();
  }

  @override
  Future<void> refreshToken() async {
    _isRefreshing = true;

    try {
      await authRepository.refreshToken();
    } catch (_) {
    } finally {
      _isRefreshing = false;
    }
  }

  @override
  Future<Either<Failure, String>> deleteProfile() {
    return authRepository.deleteProfile();
  }
}

class AuthManagerSettings {
  AuthManagerSettings({required this.useBiometric, required this.useLocalAuth});

  final bool useBiometric;
  late bool useLocalAuth;
}
