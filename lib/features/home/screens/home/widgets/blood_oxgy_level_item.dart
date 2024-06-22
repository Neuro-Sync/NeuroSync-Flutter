import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../../core/components/app_text.dart';
import '../../../../../core/resources/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_font_family.dart';

class BloodOxgyLevelItem extends StatelessWidget {
  const BloodOxgyLevelItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.mintGreencolor,
          borderRadius: BorderRadius.circular(23.36.r)),
      width: 283.96.w,
      height: 359.88.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 25.h),
            child: SizedBox(
                width: 150.w,
                height: 155.h,
                child: Image.asset(
                  AppAssets.blood_oxg_img,
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 80.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText(
                    "Blood oxygen level",
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
                      "95%",
                      fontSize: 25.2.sp,
                      color: AppColors.blackColor,
                      fontFamily: FontConstants.lorasemiBoldFont,
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: SvgPicture.asset(
                        AppAssets.heart_rate_ic,
                        color: AppColors.blackColor,
                        width: 40.2.w,
                        height: 30.64.h,
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
