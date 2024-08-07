import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/components/app_text.dart';
import '../../../../../core/resources/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_font_family.dart';

class AttentionItem extends StatelessWidget {
  const AttentionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.pinkcolor,
          borderRadius: BorderRadius.circular(23.36.r)),
      width: 283.96.w,
      height: 359.88.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: SizedBox(
                width: 150.w,
                height: 155.h,
                child: Image.asset(
                  AppAssets.attention_img,
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 72.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText(
                    "Attention",
                    fontSize: 24.82.sp,
                    color: AppColors.blackColor,
                    fontFamily: FontConstants.loraBoldFont,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppText(
                      "90%",
                      fontSize: 25.2.sp,
                      color: AppColors.blackColor,
                      fontFamily: FontConstants.lorasemiBoldFont,
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: SvgPicture.asset(
                        AppAssets.brain_ic,
                        color: AppColors.blackColor,
                        width: 51.58.w,
                        height: 44.28.h,
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
