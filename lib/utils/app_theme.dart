import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppTheme{
  AppTheme._();

  static ThemeData LightTheme = ThemeData(
   scaffoldBackgroundColor : Colors.black,
   canvasColor: Colors.white,
   cardColor: AppColors.appLightColor,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.aBeeZee(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
      displayMedium: GoogleFonts.aBeeZee(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
      displaySmall: GoogleFonts.aBeeZee(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
      bodyLarge: GoogleFonts.aBeeZee(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
      bodyMedium: GoogleFonts.aBeeZee(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
    )
  );

  static ThemeData DarkTheme = ThemeData(
      scaffoldBackgroundColor : Colors.black,
      canvasColor: Colors.white,
      cardColor: AppColors.appDarkColor,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.aBeeZee(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        displayMedium: GoogleFonts.aBeeZee(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        displaySmall: GoogleFonts.aBeeZee(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        bodyLarge: GoogleFonts.aBeeZee(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
        bodyMedium: GoogleFonts.aBeeZee(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
      )
  );

}