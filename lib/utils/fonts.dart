import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontsLight {
  static final TextStyle bodyLarge = GoogleFonts.roboto(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: const Color(0xff323333));

  static final TextStyle bodySmall = GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: const Color(0xff707070));

  static final TextStyle headingMedium = GoogleFonts.roboto(
      fontWeight: FontWeight.w700,
      fontSize: 22,
      color: const Color(0xff323333));
}

class FontsDark {
  static final TextStyle bodyLarge = GoogleFonts.roboto(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: const Color(0xffFFFFFF));

  static final TextStyle bodySmall = GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: const Color(0xffA6A6A6));

  static final TextStyle headingMedium = GoogleFonts.roboto(
      fontWeight: FontWeight.w700,
      fontSize: 22,
      color: const Color(0xffFFFFFF));
}
