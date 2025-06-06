import 'package:apr/src/core/features/settings/_settings.dart';
import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';

class DevicePreferencesRepositoryImlp implements DevicePreferencesRepository {
  DevicePreferencesRepositoryImlp({
    required DevicePreferencesDataSource dataSource,
  }) : _dataSource = dataSource;

  final DevicePreferencesDataSource _dataSource;

  @override
  Future<AppInfoModel> getAppInfo() async {
    return AppInfo.getAppInfo();
  }

  @override
  Future<DeviceInfoModel> getDeviceInfo() async {
    return AppInfo.getDeviceInfo();
  }

  @override
  Future<void> setLocale(Locale? locale) async {
    await _dataSource.setLocale(locale);
  }

  @override
  Future<void> setThemeMode(ThemeMode? themeMode) async {
    await _dataSource.setThemeMode(themeMode);
  }

  @override
  Future<Locale?> getLocale() async {
    return _dataSource.getLocale();
  }

  @override
  Future<ThemeMode> getThemeMode() async {
    return _dataSource.getThemeMode();
  }
}
