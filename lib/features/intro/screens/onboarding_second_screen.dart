import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_assets.dart';
import 'package:neurosync/core/resources/app_colors.dart';
import 'package:neurosync/core/resources/app_font_family.dart';
import 'package:neurosync/core/resources/app_size.dart';
import 'package:neurosync/core/resources/app_texts.dart';

class OnBoardingSecondScreen extends StatelessWidget {
  const OnBoardingSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.asset(
          //   AppAssets.onboarding_2_IC,
          //   width: 592,
          //   height: 414,
          // ),
          Gap(20.h),
          AppText(
            AppTexts.on_boarding_2_body,
            fontFamily: FontConstants.lorasemiBoldFont,
              fontSize: FontSizes.veryLarge,
            color: Colors.white,
          ),
          Gap(8.h),
          AppText(
            AppTexts.on_boarding_2_tail,
            fontFamily: FontConstants.lorasemiBoldFont,
             fontSize: FontSizes.medium,
            color: AppColors.introBodyColor,
          ),
        ],
      ),
    );
  }
}
