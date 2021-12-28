import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData getTheme() {
    return _themeData;
  }

  HexColor _primaryColor = HexColor("5956E9");

  static TextTheme _textTheme = TextTheme(
      headline1: GoogleFonts.raleway(
          textStyle: TextStyle(
        fontSize: 64.sp,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      )),
      button: GoogleFonts.raleway(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        color: HexColor("5956E9"),
      ));

  //light theme only
  static ThemeData _themeData = ThemeData(
    scaffoldBackgroundColor: HexColor("F9F9F9"),
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    platform: TargetPlatform.iOS,
    primaryColor: HexColor("5956E9"),
    backgroundColor: HexColor("F9F9F9"),
    textTheme: _textTheme,
    pageTransitionsTheme: PageTransitionsTheme(builders: {
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    }),
  );
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
