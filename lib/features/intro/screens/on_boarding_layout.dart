// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/core/resources/app_assets.dart';
import 'package:neurosync/core/resources/app_size.dart';
import 'package:neurosync/core/resources/app_texts.dart';
import 'package:neurosync/core/theming/app_styles.dart';
import 'package:neurosync/features/auth/screens/registertion_layout.dart';
import 'package:neurosync/features/intro/widgets/onboarding_item.dart';

import '../../../core/theming/app_colors.dart';

class OnboardingLayout extends StatefulWidget {
  const OnboardingLayout({super.key});

  @override
  State<OnboardingLayout> createState() => _OnboardingLayoutState();
}

class _OnboardingLayoutState extends State<OnboardingLayout> {
  List<String> titles = [
    AppTexts.on_boarding_1_body,
    AppTexts.on_boarding_2_body,
    AppTexts.on_boarding_3_body,
    "",
  ];

  List<String> bodeis = [
    AppTexts.on_boarding_1_tail,
    AppTexts.on_boarding_2_tail,
    AppTexts.on_boarding_3_tail,
    AppTexts.qrcode_text
  ];

  List<String> bgImages = [
    AppAssets.onboarding_1,
    AppAssets.onboarding_2,
    AppAssets.onboarding_3,
    AppAssets.qrcode,
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
        finishButtonText: 'Register'.tr(),
        finishButtonTextStyle: TextStyle(fontSize: FontSizes.medium),
        finishButtonStyle: FinishButtonStyle(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.sp)))),
        onFinish: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const RegisterationLayout(),
            ),
          );
        },
        trailing: Text(
          'skip'.tr(),
          style: TextStyles.font18BlackInterMedium.copyWith(fontSize: 24.sp),
        ),
        addController: true,
        hasSkip: true,
        centerBackground: true,
        skipTextButton: Text(
          'skip'.tr(),
          style: TextStyles.font18BlackInterMedium.copyWith(fontSize: 24.sp),
        ),
        hasFloatingButton: true,
        imageVerticalOffset: 50.h,
        trailingFunction: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const RegisterationLayout(),
            ),
          );
        },
        addButton: true,
        skipFunctionOverride: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const RegisterationLayout(),
            ),
          );
        },
        controllerColor: AppColors.blackColor,
        totalPage: 4,
        headerBackgroundColor: AppColors.primarycolor,
        background: List.generate(
            4,
            (index) => Padding(
                  padding: EdgeInsets.only(top: index == 3 ? 100.h : 0.h),
                  child: Image.asset(
                    bgImages[index],
                    width: index == 3 ? 310.w : 300.w,
                    height: index == 3 ? 260.h : 380.h,
                  ),
                )),
        speed: 1.8,
        pageBodies: List.generate(
          4,
          (index) => OnboardingBody(
              title: titles[index], body: bodeis[index], gapHeight: 16.h),
        ));
  }
}
