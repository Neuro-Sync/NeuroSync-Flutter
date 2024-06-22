import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_assets.dart';
import 'package:neurosync/core/theming/app_colors.dart';
import 'package:neurosync/core/theming/app_font_family.dart';

class HomeControllerMiddleSection extends StatelessWidget {
  const HomeControllerMiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: 280.w,
      child: Center(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  height: 65.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                      color: AppColors.chattopbarColor,
                      borderRadius: BorderRadius.circular(9.r)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppAssets.user_ic,
                        width: 30.w,
                        height: 30.h,
                      ),
                      Gap(6.h),
                      AppText(
                        "Profile",
                        color: AppColors.blackColor,
                        fontSize: 10.sp,
                        fontFamily: FontConstants.interSemiBoldFont,
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: 65.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                      color: AppColors.chattopbarColor,
                      borderRadius: BorderRadius.circular(9.r)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppAssets.entertainment_ic,
                        width: 30.w,
                        height: 30.h,
                      ),
                      Gap(6.h),
                      AppText(
                        "Entertainment",
                        color: AppColors.blackColor,
                        fontSize: 10.sp,
                        fontFamily: FontConstants.interSemiBoldFont,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Container(
                  height: 65.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                      color: AppColors.chattopbarColor,
                      borderRadius: BorderRadius.circular(9.r)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppAssets.map_ic,
                        width: 30.w,
                        height: 30.h,
                      ),
                      Gap(6.h),
                      AppText(
                        "Map",
                        color: AppColors.blackColor,
                        fontSize: 10.sp,
                        fontFamily: FontConstants.interSemiBoldFont,
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: 65.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                      color: AppColors.chattopbarColor,
                      borderRadius: BorderRadius.circular(9.r)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chat,
                        color: AppColors.bluecolorEntertainment,
                      ),
                      Gap(6.h),
                      AppText(
                        "Chat",
                        color: AppColors.blackColor,
                        fontSize: 10.sp,
                        fontFamily: FontConstants.interSemiBoldFont,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
