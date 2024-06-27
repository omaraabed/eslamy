import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static const Color lightColor = Color(0xffB7935F);

  static ThemeData lightTheme = ThemeData(
      primaryColor: lightColor,
      appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(size: 30)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: lightColor,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedLabelStyle:
              GoogleFonts.aBeeZee(fontSize: 12, fontWeight: FontWeight.bold)),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: GoogleFonts.quicksand(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        displayLarge: GoogleFonts.dekko(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ));
}
