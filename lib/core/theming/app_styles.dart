import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/core/theming/app_colors.dart';
import 'package:neurosync/core/theming/app_font_family.dart';
import 'package:neurosync/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font32WhiteSemiBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.mainScreensTitlesBlueColor,
      fontFamily: FontConstants.interSemiBoldFont);
  static TextStyle font20PrimaryColorSemiBold = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.mainScreensTitlesBlueColor,
      fontFamily: FontConstants.interSemiBoldFont);
  static TextStyle font24lightlightgreySemiBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.lightlightgrey,
      fontFamily: FontConstants.interMediumFont);

  static TextStyle font48BlackInterBold = TextStyle(
      fontSize: 48.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.blackColor,
      fontFamily: FontConstants.interBoldFont);
  static TextStyle font18BlackInterMedium = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.medium,
      color: Colors.black,
      fontFamily: FontConstants.interMediumFont);
}
