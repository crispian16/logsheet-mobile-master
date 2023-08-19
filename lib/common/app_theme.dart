import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static AppTheme? _instance;

  AppTheme._internal() {
    _instance = this;
  }

  factory AppTheme() => _instance ?? AppTheme._internal();

  // App Colors
  static const Color brightYellow = Color(0xffFAF9E4);
  static const Color darkYellow = Color(0xff928A00);
  static const Color brightRed = Color(0xffFFE8E9);
  static const Color darkRed = Color(0xffA60006);
  static const Color brightBlue = Color(0xffDEF6FF);
  static const Color darkBlue = Color(0xff15A8E1);
  static const Color primaryBlack = Color(0xff646464);
  static const Color secondaryBlack = Color(0xff020202);
  static const Color primaryGrey = Color(0xffBCBEC0);
  static const Color secondaryGrey = Color(0xffF1F2F2);

  // App Text Theme
  final TextTheme _textTheme = TextTheme(
    displayLarge: GoogleFonts.inter(
        fontSize: 94, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    displayMedium: GoogleFonts.inter(
        fontSize: 59, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    displaySmall: GoogleFonts.inter(fontSize: 47, fontWeight: FontWeight.w400),
    headlineMedium: GoogleFonts.inter(
        fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headlineSmall: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w400),
    titleLarge: GoogleFonts.inter(
        fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    titleMedium: GoogleFonts.inter(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    titleSmall: GoogleFonts.inter(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyLarge: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyMedium: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    labelLarge: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    bodySmall: GoogleFonts.roboto(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    labelSmall: GoogleFonts.roboto(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );

  // App Themes
  ThemeData getThemeData(bool isDarkMode) {
    if (isDarkMode) return _darkTheme();
    return _lightTheme();
  }

  ThemeData _lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: primaryBlack),
        centerTitle: true,
        toolbarTextStyle: TextStyle(color: primaryBlack),
      ),
      textTheme: _textTheme,
      primaryColor: brightYellow,
      buttonTheme: ButtonThemeData(
        buttonColor: brightYellow,
        height: 60,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: brightYellow,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ThemeData().colorScheme.copyWith(secondary: darkYellow),
    );
  }

  ThemeData _darkTheme() {
    return ThemeData();
  }
}
