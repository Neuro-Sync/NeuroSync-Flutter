import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class ContactsControllerMiddleSection extends StatelessWidget {
  const ContactsControllerMiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(33.h),
        OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                Size(323.w, 59.h),
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Send Alert",
                  style: TextStyles.font20greySemiBold,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 40.h,
                      width: 2.w,
                      color: AppColors.grey,
                    ),
                    Gap(28.w),
                    Icon(
                      Icons.info,
                      color: AppColors.grey,
                      size: 38.sp,
                    ),
                  ],
                ),
              ],
            )),
        Gap(25.h),
        OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                Size(323.w, 59.h),
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Search",
                  style: TextStyles.font20greySemiBold,
                ),
                Gap(0.4.w),
                Container(
                  height: 33.h,
                  width: 34.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.grey),
                  child: Icon(
                    Icons.mic,
                    color: Colors.white.withOpacity(0.5),
                    size: 25.sp,
                  ),
                ),
              ],
            )),
        Gap(36.h),
        Row(
          children: [
            Expanded(
              child: OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                      Size(154.w, 51.h),
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          color: Colors.white.withOpacity(0.5),
                          size: 25.sp,
                        ),
                      ),
                      Text(
                        "Samy",
                        style: TextStyles.font20greySemiBold,
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
                      Size(154.w, 51.h),
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          color: Colors.white.withOpacity(0.5),
                          size: 25.sp,
                        ),
                      ),
                      Text(
                        "Samy",
                        style: TextStyles.font20greySemiBold,
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
