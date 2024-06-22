// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class AppColors {
  static Color primarycolor = HexColor("#F3F3F3");
  static Color darkbluecolor = HexColor("#333E66");
  static Color bluecolor = HexColor("#366EFF");
  static Color ambercolor = HexColor("#FFC97E");
  static Color lightmovecolor = HexColor("#8E97FD");
  static Color pinkcolor = HexColor("#D9A5B5");
  static Color mintGreencolor = HexColor("#AFDBC5");
  static Color greycolor = HexColor("#E0E0E0");
  static Color redcolor = HexColor("#FF0909");
  static Color bluecolorEntertainment = HexColor("#0989FF");
  static Color movecolor = HexColor("#7509FF");
  static Color mintgreencolor = HexColor("#00AFA5");
  static Color orangecolor = HexColor("#FF6B00");
  static Color lightredcolor = HexColor("#FBF0F3");
  static Color heartrategraycolor = HexColor("#818181");
  static Color heartratewhitecolor = HexColor("#FFFEFE");
  static Color bloodoxygengreencolor = HexColor("#D0FBFF");
  static Color contactsBlackcolor = HexColor("#1E1E1E");
  static Color blackColor = HexColor("#263238");
  static Color mainScreensTitlesBlueColor = HexColor("#0058A9");
  static Color introBodyColor = HexColor("#B4B8BD");
  static Color subtitleRegisterationColor = HexColor("#E2ECF5");
  static Color hintColorRegisterTFFColor = HexColor("#98A2B3");
  static Color btnRegisterationColor = HexColor("#5852A3");
  static Color dropDownColor = HexColor("#AEB2B7");
  static Color switchColor = HexColor("#6C6CB9");
  static Color lightwhite = HexColor("#E7E8EA");
  static Color blueColor = HexColor("#1166B5");
  static Color lightAmber = HexColor("#FF8E25");
  static Color lightMove = HexColor("#E80DE6");
  static Color lightRed = HexColor("#FFD7D1");
  static Color lightGrey = HexColor("#CFCFCD");
  static Color blue = HexColor("#84A3F5");
  static Color green = HexColor("#0E8622");
  static Color grey = HexColor("#E6E5E7");
  static Color darkgrey = HexColor("#8F8F8F");
  static Color lightgrey = HexColor("#E7E5E6");
  static Color lightlightgrey = HexColor("#8B8B8B");
  static Color chattopbarColor = HexColor("#EFF4FF");
  static Color chatSendLocationbtnIconColor = HexColor("#3478F5");
  static Color offWhiteColor = HexColor("#FFF6E9");
  static Color lightBlueColor = HexColor("#C3E2FF");
  static Color heavyBlueColor = HexColor("#2176A0");
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
