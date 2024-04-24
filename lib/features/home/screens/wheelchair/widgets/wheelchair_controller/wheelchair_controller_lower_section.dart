import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/resources/app_assets.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_styles.dart';

class WheelChairControllerLowerSection extends StatefulWidget {
  const WheelChairControllerLowerSection({super.key});

  @override
  State<WheelChairControllerLowerSection> createState() =>
      _WheelChairControllerLowerSectionState();
}

class _WheelChairControllerLowerSectionState
    extends State<WheelChairControllerLowerSection> {
  bool isActivated = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(30.h),
        OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              maximumSize: MaterialStateProperty.all(
                Size(270.w, 66.h),
              ),
              minimumSize: MaterialStateProperty.all(
                Size(270.w, 66.h),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: BorderSide(color: AppColors.blue),
                  borderRadius: BorderRadius.circular(164.0.r),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColors.chattopbarColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Current Location",
                    style: TextStyles.font20PrimaryColorSemiBold),
                Container(
                  height: 40.h,
                  width: 2.w,
                  color: AppColors.mainScreensTitlesBlueColor,
                ),
                Container(
                  width: 31.w,
                  height: 31.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        AppColors.chatSendLocationbtnIconColor.withOpacity(0.2),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0.sp),
                    child: Image.asset(
                      AppAssets.send_IC,
                      height: 17.5.h,
                      width: 17.5.w,
                      color: AppColors.chatSendLocationbtnIconColor,
                    ),
                  ),
                ),
                Gap(1.w)
              ],
            )),
        Gap(30.h),
        OutlinedButton(
          onPressed: () {},
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
        Gap(3.h),
      ],
    );
  }
}
