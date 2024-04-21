import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_assets.dart';
import 'package:neurosync/core/resources/app_size.dart';
import 'package:neurosync/core/resources/app_texts.dart';
import 'package:neurosync/core/theming/app_styles.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_font_family.dart';

class OnBoardingFirstScreen extends StatelessWidget {
  const OnBoardingFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Gap(41.h),
          AppText(
            AppTexts.on_boarding_1_body,
            fontFamily: FontConstants.lorasemiBoldFont,
            fontSize: FontSizes.veryLarge,
            color: Colors.black,
          ),
          Gap(8.h),
          Text(
            AppTexts.on_boarding_1_tail,
            style: TextStyles.font48BlackInterBold,
          ),
        ],
      ),
    );
  }
}
