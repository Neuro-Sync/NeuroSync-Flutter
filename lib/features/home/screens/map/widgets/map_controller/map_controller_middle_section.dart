import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/resources/app_assets.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_styles.dart';

class MapControllerMiddleSection extends StatelessWidget {
  const MapControllerMiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Gap(67.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    Size(160.w, 51.h),
                  ),
                  maximumSize: MaterialStateProperty.all(
                    Size(160.w, 51.h),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      side: BorderSide(
                          color: AppColors.mainScreensTitlesBlueColor,
                          width: 1),
                      borderRadius: BorderRadius.circular(
                          164.0.r), // Replace 10.0 with your desired radius
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      AppColors.chattopbarColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      AppAssets.home_icon_IC,
                      height: 22.h,
                      width: 22.w,
                    ),
                    Text(
                      "Home",
                      style: TextStyles.font20PrimaryColorSemiBold
                          .copyWith(fontSize: 15.sp),
                    ),
                  ],
                )),
            OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    Size(158.w, 51.h),
                  ),
                  maximumSize: MaterialStateProperty.all(
                    Size(158.w, 51.h),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          164.0.r), // Replace 10.0 with your desired radius
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      AppColors.chattopbarColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      AppAssets.persons_icon_IC,
                      height: 22.h,
                      width: 22.w,
                    ),
                    Text(
                      "Companion",
                      style: TextStyles.font20PrimaryColorSemiBold
                          .copyWith(fontSize: 15.sp),
                    ),
                  ],
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    Size(158.w, 51.h),
                  ),
                  maximumSize: MaterialStateProperty.all(
                    Size(158.w, 51.h),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      side: BorderSide(
                          color: AppColors.mainScreensTitlesBlueColor,
                          width: 1),
                      borderRadius: BorderRadius.circular(
                          164.0.r), // Replace 10.0 with your desired radius
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      AppColors.chattopbarColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      AppAssets.office_icon_IC,
                      height: 19.h,
                      width: 20.w,
                    ),
                    Text(
                      "Office",
                      style: TextStyles.font20PrimaryColorSemiBold
                          .copyWith(fontSize: 15.sp),
                    ),
                  ],
                )),
            OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    Size(158.w, 51.h),
                  ),
                  maximumSize: MaterialStateProperty.all(
                    Size(158.w, 51.h),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          164.0.r), // Replace 10.0 with your desired radius
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      AppColors.chattopbarColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      AppAssets.clinic_icon_IC,
                      height: 22.h,
                      width: 22.w,
                    ),
                    Text(
                      "Clinic",
                      style: TextStyles.font20PrimaryColorSemiBold
                          .copyWith(fontSize: 15.sp),
                    ),
                  ],
                )),
          ],
        ),
        Gap(33.5.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Divider(
            color: Colors.grey.withOpacity(0.3),
            thickness: 2,
          ),
        ),
        Gap(33.5.h),
      ],
    );
  }
}
