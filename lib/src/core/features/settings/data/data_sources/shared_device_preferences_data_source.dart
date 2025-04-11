import 'package:apr/src/core/constants/_constants.dart';
import 'package:apr/src/core/features/settings/_settings.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedDevicePreferencesDataSource implements DevicePreferencesDataSource {
  @override
  Future<Locale?> getLocale() async {
    final SharedPreferences _preferences =
        await SharedPreferences.getInstance();

    final String? locale = _preferences.getString(AppStorageKeys.locale);

    if (locale != null) {
      return Locale.fromSubtags(
        languageCode: locale.split('_').first,
        countryCode: locale.split('_').last,
      );
    }

    return null;
  }

  @override
  Future<ThemeMode> getThemeMode() async {
    final SharedPreferences _preferences =
        await SharedPreferences.getInstance();

    final String? themeMode = _preferences.getString(AppStorageKeys.themeMode);

    switch (themeMode) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
        return ThemeMode.system;
    }

    return ThemeMode.light;
  }

  @override
  Future<void> setLocale(Locale? locale) async {
    final SharedPreferences _preferences =
        await SharedPreferences.getInstance();

    if (locale == null) {
      await _preferences.remove(AppStorageKeys.locale);
    } else {
      await _preferences.setString(
        AppStorageKeys.locale,
        locale.toString(),
      );
    }
  }

  @override
  Future<void> setThemeMode(ThemeMode? themeMode) async {
    final SharedPreferences _preferences =
        await SharedPreferences.getInstance();

    if (themeMode == null) {
      await _preferences.remove(AppStorageKeys.themeMode);
    } else {
      await _preferences.setString(
        AppStorageKeys.themeMode,
        themeMode.name,
      );
    }
  }
}
