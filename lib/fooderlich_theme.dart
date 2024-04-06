import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooderlichTheme {
  // 1
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize: 14.0,
       shadows: [
        const Shadow(
          color: Colors.grey,
          blurRadius: 2.0,
          offset: Offset(4.0, 4.0),
        ),
      ],
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline1: GoogleFonts.openSans(
      fontSize: 32.0,
       shadows: [
        const Shadow(
          color: Colors.grey,
          blurRadius: 2.0,
          offset: Offset(4.0, 4.0),
        ),
      ],
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: GoogleFonts.rubik(
      fontSize: 21.0,
       shadows: [
        const Shadow(
          color: Colors.grey,
          blurRadius: 2.0,
          offset: Offset(4.0, 4.0),
        ),
      ],
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    headline3: GoogleFonts.rubik(
      fontSize: 16.0,
       shadows: [
        const Shadow(
          color: Colors.grey,
          blurRadius: 2.0,
          offset: Offset(4.0, 4.0),
        ),
      ],
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
    headline5: GoogleFonts.openSans(
      fontSize: 18.0,
       shadows: [
        const Shadow(
          color: Colors.grey,
          blurRadius: 2.0,
          offset: Offset(4.0, 4.0),
        ),
      ],
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline6: GoogleFonts.openSans(
      fontSize: 20.0,
       shadows: [
        const Shadow(
          color: Colors.grey,
          blurRadius: 2.0,
          offset: Offset(4.0, 4.0),
        ),
      ],
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );
  // 2
  static TextTheme darkTextTheme = TextTheme(
    bodyText1: GoogleFonts.rubik(
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
      shadows: [
        const Shadow(
          color: Colors.black,
          blurRadius: 2.0,
          offset: Offset(4.0, 4.0),
        ),
      ],
      color: Colors.white,
    ),
    bodyText2: GoogleFonts.rubik(
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      shadows: [
        const Shadow(
          color: Colors.black,
          blurRadius: 2.0,
          offset: Offset(4.0, 4.0),
        ),
      ],
      color: Colors.white,
    ),
    headline1: GoogleFonts.rubik(
      fontSize: 32.0,
      fontWeight: FontWeight.w500,
      shadows: [
        const Shadow(
          color: Colors.black,
          blurRadius: 2.0,
          offset: Offset(4.0, 4.0),
        ),
      ],
      color: Colors.white,
    ),
    headline2: GoogleFonts.rubik(
      fontSize: 21.0,
      shadows: [
        const Shadow(
          color: Colors.black,
          blurRadius: 2.0,
          offset: Offset(4.0, 4.0),
        ),
      ],
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline3: GoogleFonts.rubik(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline6: GoogleFonts.rubik(
      fontSize: 20.0,
      fontWeight: FontWeight.w200,
      color: Colors.white,
    ),
  );
  // 3
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            return Colors.black;
          },
        ),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: lightTextTheme,
    );
  }

  // 4
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: darkTextTheme,
    );
  }
}
