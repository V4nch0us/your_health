import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.grey,
    primary: AppColors.grey,
    surface: AppColors.white,
    brightness: Brightness.light,
  ),
  textTheme: textTheme.apply(
    fontFamily: GoogleFonts.manrope().fontFamily,
    bodyColor: AppColors.black,
  ),
);

const textTheme = TextTheme();

class AppTextStyles {
  static final title = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
  );
  static final subtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
  );
  static final dataTileDate = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static final dataTileLabName = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
  );
  static final alertMessage = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
  );
  static final chartLabel = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: Color(0xFF040404).withValues(alpha: 0.4),
  );
}
