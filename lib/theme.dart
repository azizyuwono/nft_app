import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Colors
const Color kBlackColor = Color(0xff0D1220);
const Color kWhiteColor = Color(0xffFFFFFF);
const Color kGreyColor = Color(0xff909FB4);
const Color kRedColor = Color(0xffF86780);
const Color kGreyLightColor = Color(0xffF7F9FC); // Used for inputs
const Color kBackgroundColor = Color(0xffF6F9FC); // Used for scaffold
const Color kBlueColor = Color(0xff1B4DEA);

// Legacy support (to be removed after refactoring)
Color blackColor = kBlackColor;
Color whiteColor = kWhiteColor;
Color greyColor = kGreyColor;
Color redColor = kRedColor;
Color greyLightColor = kGreyLightColor;
Color blueColor = kBlueColor;

// Text Styles
TextStyle titleStyle = GoogleFonts.inter(
  fontSize: 26,
  fontWeight: FontWeight.w600,
  color: kBlackColor,
);

TextStyle subStyle = GoogleFonts.inter(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: kGreyColor,
);

// App Theme
ThemeData appTheme() {
  return ThemeData(
    primaryColor: kBlueColor,
    scaffoldBackgroundColor: kBackgroundColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: kBlueColor,
      secondary: kBlueColor,
    ),
    textTheme: GoogleFonts.interTextTheme(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kBlueColor,
        foregroundColor: kWhiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        textStyle: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: kGreyLightColor,
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(13),
      ),
      hintStyle: GoogleFonts.inter(
        color: kGreyColor,
        fontSize: 16,
      ),
    ),
  );
}
