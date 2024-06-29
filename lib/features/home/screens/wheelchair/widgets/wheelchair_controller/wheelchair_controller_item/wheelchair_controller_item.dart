import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../../../../core/theming/app_colors.dart';
import 'arrow_left.dart';
import 'arrow_right.dart';
import 'arrow_up.dart';
import 'stop_btn.dart';

class WheelChairControllerItem extends StatelessWidget {
  const WheelChairControllerItem({super.key});

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
          const WheelchairArrowUp(),
          Gap(20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const WheelchairArrowLeft(),
              Gap(20.h),
              const WheelchairStopBtn(),
              Gap(20.h),
              const WheelchairArrowRight(),
            ],
          ),
          Gap(20.h),
        ],
      ),
    );
  }
}
