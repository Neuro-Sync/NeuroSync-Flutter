// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/theming/app_colors.dart';
import 'package:neurosync/core/theming/app_font_family.dart';
import 'package:neurosync/features/home/screens/home/widgets/attention_item.dart';
import '../widgets/blood_oxgy_level_item.dart';
import '../widgets/heart_rate_item.dart';
import '../widgets/home_controller/home_controller_item.dart';
import '../widgets/home_controller/home_controller_middle_section/home_controller_middle_section.dart';
import '../widgets/home_controller/home_controller_upper_section.dart';
import '../widgets/temp_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 370.w,
              height: 925.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  const HomeControllerUpperSection(),
                  Gap(37.h),
                  const HomeControllerMiddleSection(),
                  Gap(118.h),
                  const HomeControllerItem(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 960.h,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(end: Alignment.bottomCenter, colors: [
                  AppColors.offWhiteColor,
                  AppColors.lightBlueColor.withOpacity(0.2),
                ])),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: AppText(
                        "We Wish you have a good day",
                        fontFamily: FontConstants.loraRegularFont,
                        fontSize: 48.sp,
                        color: AppColors.heavyBlueColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 174.w, top: 40.h),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const TempItem(),
                              Gap(92.w),
                              const HeartRateItem(),
                            ],
                          ),
                          Gap(28.h),
                          Row(
                            children: [
                              const AttentionItem(),
                              Gap(92.w),
                              const BloodOxgyLevelItem(),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
