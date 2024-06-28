import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static const Color lightColor = Color(0xffB7935F);
  static const Color darkColor = Color(0xff141A2E);
  static const Color yellowColor = Color(0xffFACC1D);

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
          fontSize: 27,
          fontWeight: FontWeight.w600,
        ),
      ));
  static ThemeData darkTheme = ThemeData(
      primaryColor: darkColor,
      appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(size: 30)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.shifting,
          backgroundColor: darkColor,
          selectedItemColor: yellowColor,
          unselectedItemColor: Colors.white,
          selectedLabelStyle:
          GoogleFonts.aBeeZee(fontSize: 12, fontWeight: FontWeight.bold)),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.white
        ),
        bodySmall: GoogleFonts.quicksand(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        displayLarge: GoogleFonts.dekko(
          fontSize: 27,
          fontWeight: FontWeight.w600,
          color: yellowColor
        ),

      ),
  );
}
