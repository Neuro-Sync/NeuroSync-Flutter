import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../core/components/app_text.dart';
import '../../../../../core/resources/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_font_family.dart';

class TempItem extends StatelessWidget {
  const TempItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.ambercolor,
          borderRadius: BorderRadius.circular(23.36.r)),
      width: 283.96.w,
      height: 359.88.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              width: 283.96.w,
              height: 230.h,
              child: Image.asset(
                AppAssets.temp_img,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText(
                    "Temperature",
                    fontSize: 24.82.sp,
                    color: AppColors.blackColor,
                    fontFamily: FontConstants.loraBoldFont,
                  ),
                ),
                Gap(5.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppText(
                      "40° Celsius",
                      fontSize: 25.2.sp,
                      color: AppColors.blackColor,
                      fontFamily: FontConstants.lorasemiBoldFont,
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: SvgPicture.asset(
                        AppAssets.temp_ic,
                        color: AppColors.blackColor,
                        width: 32.82.w,
                        height: 60.98.h,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
