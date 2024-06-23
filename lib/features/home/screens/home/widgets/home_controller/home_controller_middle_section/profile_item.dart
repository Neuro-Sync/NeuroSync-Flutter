import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/components/app_text.dart';
import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_font_family.dart';
import '../../../../../../../core/utils/nav_utils.dart';
import '../../../../edit_profile/screens/edit_profile_screen.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pushScreen(context, const EditProfileScreen());
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
              AppAssets.user_ic,
              width: 30.w,
              height: 30.h,
            ),
            Gap(6.h),
            AppText(
              "Profile",
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
