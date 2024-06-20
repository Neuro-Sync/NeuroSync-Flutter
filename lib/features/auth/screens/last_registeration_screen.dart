import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_button.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_size.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_font_family.dart';
import '../../../core/theming/app_styles.dart';
import '../../preparing/screens/demo/screens/entertainment_screen.dart';

class RegisterationCongratulationsScreen extends StatelessWidget {
  const RegisterationCongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Woohoo!",
            style: TextStyles.font48BlackInterBold,
          ),
          Gap(16.h),
          Center(
            child: SizedBox(
              width: 342,
              child: Text(
                "Registration complete! Get ready to have the best experiences of your life.",
                style:
                    TextStyles.font18BlackInterMedium.copyWith(fontSize: 20.sp),
              ),
            ),
          ),
          Gap(70.h),
          AppButton(
            color: AppColors.btnRegisterationColor,
            titleColor: Colors.white,
            width: 490.w,
            height: 50.h,
            title: "Let start!",
            radius: 10.sp,
            fontFamily: FontConstants.interBoldFont,
            fontSize: FontSizes.large,
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
