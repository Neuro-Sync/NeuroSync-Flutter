import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/theming/app_styles.dart';
import 'package:neurosync/features/home/screens/entertainment/widgets/entertainment_controller/entertainment_controller_item/entertainment_controller_arrow_bottom.dart';
import 'dart:math' as math;
import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import 'entertainment_controller_arrow_left.dart';
import 'entertainment_controller_arrow_right.dart';
import 'entertainment_controller_arrow_up.dart';
import 'entertainment_controller_open_btn.dart';

class EntertainmentControllerItem extends StatelessWidget {
  const EntertainmentControllerItem({super.key});

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
          const EntertainmentControllerArrowUp(),
          Gap(20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const EntertainmentControllerArrowLeft(),
              Gap(20.h),
              const EntertainmentControllerOpenButton(),
              Gap(20.h),
              const EntertainmentControllerArrowRight(),
            ],
          ),
          Gap(20.h),
          const EntertainmentControllerArrowBottom(),
        ],
      ),
    );
  }
}
