import 'package:flutter/material.dart';

class AppColors {


  static Color colorTextButtonWith = HexColor("#FFFFFF");
  static Color primeryBlue = HexColor("#0F2546");
  static Color colorButtongery = HexColor("#F3F5F6");

}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}