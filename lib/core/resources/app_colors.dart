// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class AppColors {

  static Color primarycolor = HexColor("#008E00");
  static Color bluecolor = HexColor("#0474C0");
  static Color black = HexColor("#020C32");
  static Color drawerblack = HexColor("#212121");
  static Color drawercontentblack = HexColor("#3D3E42");
  static Color white = HexColor("#FFFFFF");
  static Color buttoncolor = HexColor("#284282");
  static Color grey = HexColor("#5C5C5C");
  static Color red = HexColor("#FF696A");
  // static Color bottomsheetcolor = HexColor("#e4e8f3");
  static Color iconUnselectedColor = HexColor("#AEBDD0");
  static Color green = HexColor("#2CB534");
  static Color dateColor = HexColor("#9F9F9F");
  static Color postPublisherNameColor = HexColor("#7C7F86");
  static Color commentsBackgroundcolor = HexColor("#EDF6FF");
  static Color settingsButtonbgColor = HexColor("#949494");
  static Color profileNameColor = HexColor("#B8B8B8");
  static Color searchIconColor = HexColor("#DEEAF6");
  static Color borderColor = const Color(0xffDADADA);
  static Color replyColor = HexColor("#555555");
  static Color experiencebgColor = HexColor("#D9D9D9");
  static Color addcommentcolor = HexColor("#525252");
  static Color dividerTabbarColor = HexColor("#DFE7F2");
  static Color rateColor = HexColor("#ABABAB");
  static Color blockedNumbersColor = HexColor("#D8E0ED");
  static Color starColor = HexColor("#BDBDBD");
  static Color messageTimeColor = HexColor("#B1B1B1");
  static Color followingTextColor = HexColor("#6C6C6C");
  static Color chatTextColor = HexColor("#0470B8");
  static Color drawerColor = HexColor("#F3F4F8");
  static Color bottomsheetColor = HexColor("#F3F4F9");
  static Color addpostfirstcolor = HexColor("#909090");
  static Color chatbgColor = HexColor("#B4B4B4");
  static Color similarpostsColor = HexColor("#747474");
  static Color similarpostsCatColor = HexColor("#F2F5FC");
  static Color similarpostsCatContentColor = HexColor("#9A9A9A");
  static Color payCommissionBgColor= HexColor("#F5F5F5");
  static Color commissionbg= Color.fromARGB(255, 250, 250, 253);

  static Color profileColorCover = HexColor("#D4DBE5");
  static Color followingborderColor = HexColor("#A0A0A0");
  static Color staticTabsColor = HexColor("#B8BECA");
  static Color staticTabsIconColor = HexColor("#AABBCF");
  static Color deepColor = HexColor("#B33136");
  static Color bgColor = HexColor("#0474C0");
  static Color blackCommission = HexColor("#212121");
  static Color senderChatColor = HexColor("#E4E7F5");
  static Color commissionGreenColor = HexColor("#1EBD85");
  static Color commissionOrangeColor = HexColor("#FFA700");
  

  static Color shimmerBaseColor = Colors.grey.withOpacity(.2);
  static Color shimmerHighLightColor = Colors.grey.withOpacity(.7);
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
