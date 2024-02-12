import 'package:electrolux/utils/fonts.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
        bodyLarge: FontsLight.bodyLarge,
        bodySmall: FontsLight.bodySmall,
        headlineMedium: FontsLight.headingMedium),
    colorScheme: const ColorScheme.light(
      background: Color(0xfff5f5f5),
      primary: Color(0xffFFFFFF),
      secondary: Color.fromARGB(146, 245, 245, 245),
    ));

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
        bodyLarge: FontsDark.bodyLarge,
        bodySmall: FontsDark.bodySmall,
        headlineMedium: FontsDark.headingMedium),
    colorScheme: const ColorScheme.dark(
      background: Color(0xFF101010),
      primary: Color(0xFF272727),
      secondary: Color.fromARGB(146, 16, 16, 16),
    ));
