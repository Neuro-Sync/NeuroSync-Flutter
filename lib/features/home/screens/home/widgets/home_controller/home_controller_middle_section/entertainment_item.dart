import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/components/app_text.dart';
import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_font_family.dart';
import '../../../../../../../core/utils/nav_utils.dart';
import '../../../../entertainment/screens/entertainment_screen.dart';

class EntertainmentItem extends StatelessWidget {
  const EntertainmentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pushScreen(context, const EnterTainMentScreen());
      },
      child: Container(
        height: 65.h,
        width: 110.w,
        decoration: BoxDecoration(
            color: AppColors.chattopbarColor,
            borderRadius: BorderRadius.circular(9.r)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.entertainment_ic,
              width: 30.w,
              height: 30.h,
            ),
            Gap(6.h),
            AppText(
              "Entertainment",
              color: AppColors.blackColor,
              fontSize: 10.sp,
              fontFamily: FontConstants.interSemiBoldFont,
            )
          ],
        ),
      ),
    );
  }
}
