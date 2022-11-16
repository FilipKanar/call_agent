import 'package:call_agent/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final theme = ThemeData(
    colorScheme: colorScheme,
  );

  static const colorScheme = ColorScheme(brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      secondary: AppColors.secondary,
      onSecondary: AppColors.onSecondary,
      error: AppColors.error,
      onError: AppColors.onError,
      background: AppColors.background,
      onBackground: AppColors.onBackground,
      surface: AppColors.surface,
      onSurface: AppColors.onSurface);
}