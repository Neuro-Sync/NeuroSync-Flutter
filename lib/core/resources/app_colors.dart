// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class AppColors {
  static Color primarycolor = HexColor("#0A1420");
  static Color introBodyColor = HexColor("#B4B8BD");
  static Color subtitleRegisterationColor = HexColor("#E2ECF5");
  static Color hintColorRegisterTFFColor = HexColor("#98A2B3");
  static Color btnRegisterationColor = HexColor("#5852A3");
  static Color dropDownColor = HexColor("#AEB2B7");
  static Color lightwhite = HexColor("#E7E8EA");
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
