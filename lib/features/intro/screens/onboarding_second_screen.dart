import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_size.dart';
import 'package:neurosync/core/resources/app_texts.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_font_family.dart';

class OnBoardingSecondScreen extends StatelessWidget {
  const OnBoardingSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
       
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
