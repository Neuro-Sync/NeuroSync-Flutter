import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/theming/app_styles.dart';

import 'dart:math' as math;

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import 'arrow_down.dart';
import 'arrow_up.dart';
import 'play_btn.dart';

class ContactsControllerItem extends StatelessWidget {
  const ContactsControllerItem({super.key});

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
          const ContactsControllerArrowUp(),
          Gap(10.h),
          const ContactsCallBtn(),
          Gap(10.h),
          const ContactsControllerArrowDown(),
        ],
      ),
    );
  }
}
