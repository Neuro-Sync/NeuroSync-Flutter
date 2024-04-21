import 'package:flutter/material.dart';
import 'package:neurosync/core/resources/app_size.dart';
import 'app_colors.dart';
import 'app_font_family.dart';

class CustomTheme {
  static ThemeData themeData = ThemeData(
    useMaterial3: false,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: AppColors.primarycolor,
    primaryColorLight: AppColors.primarycolor,
    primaryColorDark: Colors.white,
    scaffoldBackgroundColor: AppColors.primarycolor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: TextButton.styleFrom(
          backgroundColor: AppColors.primarycolor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      toolbarHeight: 12,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(2.5),
        ),
      ),
    ),
    fontFamily: FontConstants.interMediumFont,
    textTheme: TextTheme(
      displayLarge: TextStyle(
          fontSize: FontSizes.large,
          fontWeight: FontWeight.bold,
          color: Colors.white),
      titleLarge: TextStyle(fontSize: FontSizes.large, color: Colors.white),
      bodyMedium: TextStyle(
          fontSize: FontSizes.medium,
          fontFamily: FontConstants.interRegularFont,
          color: Colors.white),
      headlineMedium: TextStyle(
        fontSize: FontSizes.medium,
        fontFamily: FontConstants.interRegularFont,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: TextStyle(fontSize: FontSizes.large, color: Colors.white),
    ),
    indicatorColor: Colors.white,
    hoverColor: AppColors.primarycolor,
    splashColor: AppColors.primarycolor,
  );
}
