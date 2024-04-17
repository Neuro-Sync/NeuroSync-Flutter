import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/theming/app_colors.dart';

class ControllerItem extends StatelessWidget {
  const ControllerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260.w,
      height: 260.h,
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: Colors.white)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_up,
                color: Colors.white,
                size: 50.sp,
              )),
          Gap(5.h),
          Container(
            height: 86.h,
            width: 93.w,
            decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.grey,
                ),
                shape: BoxShape.circle,
                color: AppColors.grey),
            child: Icon(
              Icons.phone,
              color: Colors.white.withOpacity(0.5),
              size: 50.sp,
            ),
          ),
          Gap(5.h),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 50.sp,
              ))
        ],
      ),
    );
  }
}
