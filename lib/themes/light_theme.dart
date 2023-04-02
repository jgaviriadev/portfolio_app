import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme {
  LightTheme._();

  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      primaryColor: const Color(0xFFD0EDF2),
      backgroundColor: Colors.amber,
      scaffoldBackgroundColor: const Color(0xFFD0EDF2),
      textTheme: GoogleFonts.interTextTheme(
        Theme.of(context).textTheme
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF00C0E4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      )
    );
  }
}