import 'package:e_commerce_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class Themes {
  static final lightTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: AppColors.scaffoldLight,
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.primaryLight,
      onPrimary: AppColors.onPrimaryLight,
      secondary: AppColors.secondaryLight,
      onSecondary: AppColors.onSecondaryLight,
      surface: AppColors.primaryLight.withOpacity(.7),
      onSurface: AppColors.onPrimaryLight,
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: AppColors.scaffoldDark,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.primaryDark,
      onPrimary: AppColors.onPrimaryDark,
      secondary: AppColors.secondaryDark,
      onSecondary: AppColors.onSecondaryDark,
      surface: AppColors.primaryDark.withOpacity(.7),
      onSurface: AppColors.onPrimaryDark,
    ),
  );
}
