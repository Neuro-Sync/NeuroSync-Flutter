import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/resources/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';

class ChatControllerLowerSection extends StatefulWidget {
  const ChatControllerLowerSection({super.key});

  @override
  State<ChatControllerLowerSection> createState() =>
      _ChatControllerLowerSectionState();
}

class _ChatControllerLowerSectionState
    extends State<ChatControllerLowerSection> {
  bool isActivated = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(67.h),
        // controller end
        OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                Size(323.w, 59.h),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      164.0.r), // Replace 10.0 with your desired radius
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                  AppColors.grey.withOpacity(0.5)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Record Voice    ",
                  style: TextStyles.font20greySemiBold
                      .copyWith(color: Colors.white),
                ),
                Container(
                  height: 40.h,
                  width: 2.w,
                  color: AppColors.grey,
                ),
                Icon(
                  Icons.mic,
                  color: Colors.white,
                  size: 38.sp,
                ),
                Gap(1.5.w)
              ],
            )),
        Gap(12.h),
        OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                Size(323.w, 59.h),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(164.0.r),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                  AppColors.grey.withOpacity(0.5)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Send Location",
                  style: TextStyles.font20greySemiBold
                      .copyWith(color: Colors.white),
                ),
                Container(
                  height: 40.h,
                  width: 2.w,
                  color: AppColors.grey,
                ),
                Image.asset(
                  AppAssets.send_IC,
                  height: 18.h,
                  width: 18.w,
                  color: Colors.white,
                ),
                Gap(1.w)
              ],
            )),
        Gap(49.h),
        OutlinedButton(
          onPressed: () {
            setState(() {
              isActivated = true;
            });
          },
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              Size(350.w, 56.h),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    164.0.r), // Replace 10.0 with your desired radius
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
                AppColors.grey.withOpacity(0.5)),
          ),
          child: Image.asset(
            AppAssets.undo_IC,
            width: 40.w,
            height: 40.h,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
