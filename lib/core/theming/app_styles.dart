import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/core/theming/app_colors.dart';
import 'package:neurosync/core/theming/app_font_family.dart';
import 'package:neurosync/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font32WhiteSemiBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white,
      fontFamily: FontConstants.lorasemiBoldFont);
  static TextStyle font20greySemiBold = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.grey,
      fontFamily: FontConstants.lorasemiBoldFont);
  static TextStyle font24lightlightgreySemiBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.lightlightgrey,
      fontFamily: FontConstants.loraMediumFont);
}
