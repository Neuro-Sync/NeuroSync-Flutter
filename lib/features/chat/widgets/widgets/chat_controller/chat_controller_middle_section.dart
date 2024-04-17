import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';

class ChatControllerMiddleSection extends StatelessWidget {
  const ChatControllerMiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(67.h),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                      Size(165.w, 51.h),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            164.0.r), // Replace 10.0 with your desired radius
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        AppColors.grey.withOpacity(0.5)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 34.h,
                        width: 34.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.grey,
                            ),
                            shape: BoxShape.circle,
                            color: AppColors.grey),
                        child: Icon(
                          Icons.phone,
                          color: Colors.white.withOpacity(0.7),
                          size: 25.sp,
                        ),
                      ),
                      Text(
                        "Voice Call",
                        style: TextStyles.font20greySemiBold
                            .copyWith(fontSize: 18.sp, color: Colors.white),
                      ),
                    ],
                  )),
            ),
            Gap(14.w),
            Expanded(
              child: OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                      Size(165.w, 51.h),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            164.0.r), // Replace 10.0 with your desired radius
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        AppColors.grey.withOpacity(0.5)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 34.h,
                        width: 34.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.grey,
                            ),
                            shape: BoxShape.circle,
                            color: AppColors.grey),
                        child: Icon(
                          Icons.video_call,
                          color: Colors.white.withOpacity(0.7),
                          size: 25.sp,
                        ),
                      ),
                      Text(
                        "video Call",
                        style: TextStyles.font20greySemiBold
                            .copyWith(fontSize: 18.sp, color: Colors.white),
                      ),
                    ],
                  )),
            ),
          ],
        ),
        Gap(67.h),
      ],
    );
  }
}
