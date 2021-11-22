import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData getTheme() {
    if (true) {
      return _themeData;
      // ignore: dead_code
    } else {
      return _themeData;
    }
  }

  // only light theme text only

  static const TextTheme _textTheme = TextTheme();

  //light theme only
  static ThemeData _themeData = ThemeData(
    scaffoldBackgroundColor: HexColor("F9F9F9"),
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    platform: TargetPlatform.iOS,
    primaryColor: HexColor("5956E9"),
    backgroundColor: HexColor("F9F9F9"),
    textTheme: _textTheme,
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
