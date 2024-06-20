import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_styles.dart';
import '../../../../../preparing/screens/demo/widgets/entertainment_components/appbar/headset_icon_component.dart';
import '../../../../../preparing/screens/demo/widgets/entertainment_components/appbar/network_icon_component.dart';

class ProfileControllerUpperSection extends StatelessWidget {
  const ProfileControllerUpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.chattopbarColor,
      height: 70.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Profile",
              style: TextStyles.font32WhiteSemiBold.copyWith(fontSize: 30.sp),
              textAlign: TextAlign.end,
            ),
            const Spacer(),
            Container(
              width: 75.w,
              height: 35.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17.r),
                  border: Border.all(
                    color: AppColors.blueColor,
                    width: 1,
                  )),
              child: Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Networkiconcomponent(),
                    Gap(5.w),
                    HeadsetIconComponent(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
