import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

final ThemeData theme = ThemeData(
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

const TextTheme textTheme = TextTheme();

class AppTextStyles {
  static final TextStyle title = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle subtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
  );
  static final TextStyle dataTileDate = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle dataTileLabName = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.grey,
  );
}
