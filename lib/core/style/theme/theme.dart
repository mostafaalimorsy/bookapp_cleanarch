import 'package:bookapp_cleanarch/core/style/color/colorManager.dart';
import 'package:flutter/material.dart';

ThemeData defaultTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: ColorManager.kPrimaryColor,
  textTheme: const TextTheme(
      titleMedium: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  )),
);
