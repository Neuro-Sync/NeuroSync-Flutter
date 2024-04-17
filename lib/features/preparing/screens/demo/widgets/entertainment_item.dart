// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import '../../../../../core/components/custom_slider.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../widgets/child_component.dart';

class EntertainmentItem extends StatelessWidget {
  final String imagePath;
  final Color? color;
  List<Color>? colors;
  Color? subcolor;
  EntertainmentItem(
      {super.key,
      required this.imagePath,
      this.color,
      this.subcolor,
      this.colors});

  @override
  Widget build(BuildContext context) {
    return ChildBuildBlock(
      
      childContent: Container(
        width: 150.w,
        height: 145.h,
        decoration: colors != null
            ? BoxDecoration(
                gradient:
                    LinearGradient(colors: colors!, end: Alignment.bottomLeft),
                borderRadius: BorderRadius.circular(22.sp),
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(22.sp), color: color),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(10.h),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.lightGrey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10.sp)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 38.w,
                  height: 38.h,
                  decoration: BoxDecoration(
                      color: subcolor ?? AppColors.lightRed,
                      borderRadius: BorderRadius.circular(10.sp)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      imagePath,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ),
              ),
            ),
            Gap(12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Container(
                          height: 8.h,
                          width: 8.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                        ),
                      )),
            ),
            Gap(12.h),
            SizedBox(
              height: 18.h,
              child: CustomSlider(
                value: 70,
                min: 50,
                max: 150,
                activeColor: color ?? Colors.amber,
                onChanged: (value) {},
              ),
            ),
            Gap(5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppText(
                  "Used: 8.5 GB",
                  color: Colors.white,
                  fontSize: 10.sp,
                ),
                AppText(
                  "128 GB",
                  color: Colors.white,
                  fontSize: 10.sp,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
