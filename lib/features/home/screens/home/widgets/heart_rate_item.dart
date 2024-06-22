import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/components/app_text.dart';
import '../../../../../core/resources/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_font_family.dart';

class HeartRateItem extends StatelessWidget {
  const HeartRateItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.lightmovecolor,
          borderRadius: BorderRadius.circular(23.36.r)),
      width: 283.96.w,
      height: 359.88.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              width: 150.w,
              height: 155.h,
              child: Image.asset(
                AppAssets.heart_rate_img,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 80.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText(
                    "Heart rate",
                    fontSize: 24.82.sp,
                    color: AppColors.blackColor,
                    fontFamily: FontConstants.loraBoldFont,
                  ),
                ),
                Gap(11.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppText(
                      "123 bpm ",
                      fontSize: 25.2.sp,
                      color: AppColors.blackColor,
                      fontFamily: FontConstants.lorasemiBoldFont,
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: Icon(Icons.favorite,
                          color: AppColors.bluecolor, size: 32.sp),
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
