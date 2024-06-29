// ignore_for_file: must_be_immutable

import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/theming/app_colors.dart';
import 'package:neurosync/core/theming/app_font_family.dart';
import 'package:neurosync/features/home/screens/home/cubit/home_cubit.dart';
import 'package:neurosync/features/home/screens/home/widgets/attention_item.dart';
import 'package:neurosync/features/home/screens/home/widgets/home_controller/controlled_home_controller_middle_section/contacts_item.dart';
import '../widgets/blood_oxgy_level_item.dart';
import '../widgets/heart_rate_item.dart';
import '../widgets/home_controller/controlled_home_controller_middle_section/profile_item.dart';
import '../widgets/home_controller/controlled_home_controller_middle_section/home_controller_middle_section.dart';
import '../widgets/home_controller/home_controller_upper_section.dart';
import '../widgets/temp_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? _timer;

  Timer? _navigationtimer;

  bool isReachedTop = false;

  int isAction = 0;

  @override
  void initState() {
    super.initState();
    // _startControllerTimer(context);
    // _navigationTimer(context);
    // _stopTimerAfterDuration(const Duration(seconds: 7));
  }

  @override
  void dispose() {
    _timer?.cancel();
    _navigationtimer?.cancel();
    super.dispose();
  }

  void _startControllerTimer(context) {
    HomeCubit homeCubit = HomeCubit.get(context);
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (homeCubit.componentWidget == null) {
        // Setting Initial Point
        homeCubit.changeCurrentHomeControllerComponent(context,
            selectedControllercomponent: const ProfileItem(), action: isAction);
        log("Setting Initial Point");
      } else {
        if (homeCubit.compareWidgets(
            homeCubit.componentWidget, const ContactsItem())) {
          // Resetting
          homeCubit.changeCurrentHomeControllerComponent(
            context,
            selectedControllercomponent: null,
            action: isAction,
          );

          log("Resetting");
        } else {
          homeCubit.changeCurrentHomeControllerComponent(context,
              selectedControllercomponent:
                  homeCubit.componentWidget.neighbors(context)["top"],
              action: isAction);
        }
      }
    });
  }

  // void _startMainContentTimer(context) {
  void _navigationTimer(context) {
    HomeCubit homeCubit = HomeCubit.get(context);
    _navigationtimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      isAction = 1;
    });
  }

  void _stopTimerAfterDuration(Duration duration) {
    Future.delayed(duration, () {
      _navigationtimer?.cancel();
      _timer?.cancel();
    });
  }

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
                  Gap(100.h),
                  const HomeControllerMiddleSection(),
                  Gap(118.h),
                  // const HomeControllerItem(),
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
