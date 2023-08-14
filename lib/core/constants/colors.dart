import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  static const scaffoldLight = Color(0xFFF9CE60);
  static const primaryLight = Color(0xFF191818);
  static const onPrimaryLight = Color(0xFFDEDEDE);
  static const secondaryLight = Color(0xFFFFE9B1);
  static const onSecondaryLight = Color(0xFF191818);

  static const scaffoldDark = Color(0xFF181B2E);
  static const primaryDark = Color(0xFFED648D);
  static const onPrimaryDark = Color(0xFFFAC8D7);
  static const secondaryDark = Color(0xFF45485F);
  static const onSecondaryDark = Color(0xFFED648D);

  static const whiteColor = Colors.white;
  static const blackColor = Colors.black;
  static const completed = Color(0xFFCCFBAD);
  static const notCompleted = Color(0xFFFFB0A6);
  static const txtLight = Colors.white;
  static const txtDark = Color(0xFF121212);

  static const red = Colors.red;
  static const blue = Colors.blue;
  static const yellow = Colors.yellow;
  static const green = Colors.green;
  static const grey = Color(0xFFABB2BF);

  static const backgroundColors = [
    Color(0xFFCCE5FF), // light blue
    Color(0xFFD7F9E9), // pale green
    Color(0xFFFFF8E1), // pale yellow
    Color(0xFFF5E6CC), // beige
    Color(0xFFFFD6D6), // light pink
    Color(0xFFE5E5E5), // light grey
    Color(0xFFFFF0F0), // pale pink
    Color(0xFFE6F9FF), // pale blue
    Color(0xFFD4EDDA), // mint green
    Color(0xFFFFF3CD), // pale orange
  ];
  static Color randomColor() {
    final random = Random();
    int randomIndex = random.nextInt(AppColors.backgroundColors.length);
    return AppColors.backgroundColors[randomIndex];
  }
}
