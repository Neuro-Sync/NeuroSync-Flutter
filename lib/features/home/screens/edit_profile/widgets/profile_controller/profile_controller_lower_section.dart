import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/resources/app_assets.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_styles.dart';

class ProfileControllerLowerSection extends StatefulWidget {
  const ProfileControllerLowerSection({super.key});

  @override
  State<ProfileControllerLowerSection> createState() =>
      _ProfileControllerLowerSectionState();
}

class _ProfileControllerLowerSectionState
    extends State<ProfileControllerLowerSection> {
  bool isActivated = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(100.h),
        OutlinedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ButtonStyle(
            maximumSize: MaterialStateProperty.all(
              Size(270.w, 66.h),
            ),
            minimumSize: MaterialStateProperty.all(
              Size(270.w, 66.h),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                side: BorderSide(
                  color: AppColors.blueColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(164.0.r),
              ),
            ),
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.chattopbarColor),
          ),
          child: Image.asset(
            AppAssets.undo_down_IC,
            width: 80.w,
            height: 56.h,
            color: AppColors.mainScreensTitlesBlueColor,
          ),
        ),
      ],
    );
  }
}
