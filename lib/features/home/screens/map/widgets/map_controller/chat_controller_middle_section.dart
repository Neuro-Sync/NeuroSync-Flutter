import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_styles.dart';

class ChatControllerMiddleSection extends StatelessWidget {
  const ChatControllerMiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Gap(67.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    Size(155.w, 51.h),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 34.h,
                      width: 34.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.blue,
                          ),
                          shape: BoxShape.circle,
                          color: Colors.white),
                      child: Icon(
                        Icons.phone,
                        color: AppColors.mainScreensTitlesBlueColor,
                        size: 20.sp,
                      ),
                    ),
                    Gap(13.w),
                    Text(
                      "Voice Call",
                      style: TextStyles.font20PrimaryColorSemiBold
                          .copyWith(fontSize: 16.sp),
                    ),
                  ],
                )),
            OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    Size(155.w, 51.h),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 34.h,
                      width: 34.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.blue,
                          ),
                          shape: BoxShape.circle,
                          color: Colors.white),
                      child: Icon(
                        Icons.video_call,
                        color: AppColors.mainScreensTitlesBlueColor,
                        size: 20.sp,
                      ),
                    ),
                    Gap(13.w),
                    Text(
                      "video Call",
                      style: TextStyles.font20PrimaryColorSemiBold
                          .copyWith(fontSize: 16.sp),
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
