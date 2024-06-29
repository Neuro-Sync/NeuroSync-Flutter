import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'dart:math' as math;
import '../../../../../../../core/theming/app_colors.dart';
import 'arrow_down.dart';
import 'arrow_up.dart';
import 'play_btn.dart';

class ChatControllerItem extends StatelessWidget {
  const ChatControllerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260.w,
      height: 260.h,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.blueColor, width: 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ChatControllerArrowUp(),
          Gap(10.h),
          const ChatPlayBtn(),
          Gap(10.h),
          const ChatControllerArrowDown(),
        ],
      ),
    );
  }
}
