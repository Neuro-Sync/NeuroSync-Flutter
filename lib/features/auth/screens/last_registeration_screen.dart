import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_button.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_colors.dart';
import 'package:neurosync/core/resources/app_font_family.dart';
import 'package:neurosync/core/resources/app_size.dart';

class RegisterationCongratulationsScreen extends StatelessWidget {
  const RegisterationCongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppText(
            "Woohoo!",
            color: Colors.white,
            fontSize: 40.sp,
            fontFamily: FontConstants.loraBoldFont,
          ),
          Gap(16.h),
          Center(
            child: SizedBox(
              width: 342,
              child: AppText(
                "Registration complete! Get ready to have the best experiences of your life.",
                color: AppColors.hintColorRegisterTFFColor,
                fontSize: FontSizes.medium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Gap(287.h),
          AppButton(
            color: AppColors.btnRegisterationColor,
            titleColor: Colors.white,
            width: 327.w,
            height: 50.h,
            title: "Let start!",
            radius: 10.sp,
            fontFamily: FontConstants.lorasemiBoldFont,
            fontSize: FontSizes.small,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
