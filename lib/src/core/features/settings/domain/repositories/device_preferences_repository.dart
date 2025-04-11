import 'package:apr_sdk/apr_sdk.dart';
import 'package:flutter/material.dart';

abstract class DevicePreferencesRepository {
  /// Получение информации о приложении
  Future<AppInfoModel> getAppInfo();

  /// Получение информации об устройстве
  Future<DeviceInfoModel> getDeviceInfo();

  /// Получение режима темы
  Future<ThemeMode> getThemeMode();

  /// Получение локали
  Future<Locale?> getLocale();

  Future<void> setLocale(Locale? locale);

  Future<void> setThemeMode(ThemeMode? themeMode);
}
