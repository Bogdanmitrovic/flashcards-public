import 'package:flashcards/data/services/local/local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  final LocalStorageService _storageService;

  ThemeCubit({required LocalStorageService storageService})
    : _storageService = storageService,
      super(ThemeMode.light);

  Future<void> loadTheme() async {
    final themeMode = await _storageService.getThemeMode();
    emit(themeMode);
  }

  /// light → dark → system → light...
  void toggleTheme() {
    ThemeMode newMode;
    switch (state) {
      case ThemeMode.light:
        newMode = ThemeMode.dark;
        break;
      case ThemeMode.dark:
        newMode = ThemeMode.system;
        break;
      case ThemeMode.system:
        newMode = ThemeMode.light;
        break;
      default:
        newMode = ThemeMode.system;
        break;
    }
    _saveTheme(newMode);
    emit(newMode);
  }

  /// light -> dark, dark -> light
  void switchTheme() {
    ThemeMode newMode;
    switch (state) {
      case ThemeMode.light:
        newMode = ThemeMode.dark;
        break;
      case ThemeMode.dark:
        newMode = ThemeMode.light;
        break;
      default:
        newMode = ThemeMode.light;
        break;
    }
    _saveTheme(newMode);
    emit(newMode);
  }

  /// Direkno setovanje, ako ikad zatreba iz Settings ekrana
  void setTheme(ThemeMode mode) {
    _saveTheme(mode);
    emit(mode);
  }

  Future<void> _saveTheme(ThemeMode mode) async {
    await _storageService.setThemeMode(mode);
  }
}

extension ThemeModeX on ThemeMode {
  String toStorageString() {
    switch (this) {
      case ThemeMode.light:
        return 'light';
      case ThemeMode.dark:
        return 'dark';
      case ThemeMode.system:
      default:
        return 'system';
    }
  }
}

extension StringX on String {
  ThemeMode toThemeMode() {
    switch (this) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }
}
