import 'package:bookapp_cleanarch/core/style/color/colorManager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData defaultTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: ColorManager.kPrimaryColor,
  textTheme: TextTheme(
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: GoogleFonts.montserratAlternates.toString(),
    ),
  ),
);
