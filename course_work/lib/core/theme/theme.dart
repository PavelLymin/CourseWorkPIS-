import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

final appTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.backGroundColor,
    titleTextStyle: textTheme.headlineLarge,
  ),
  textTheme: textTheme,
  primaryColor: AppColors.primaryColor,
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.backGroundColor,
  colorScheme: ColorScheme.dark(surface: Color(0xFF232323)),
);

final textTheme = TextTheme(
  headlineMedium: GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
  ),
  headlineLarge: GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
  ),
  titleLarge: GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
  ),
  titleMedium: GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.grey[100],
    ),
  ),
);
