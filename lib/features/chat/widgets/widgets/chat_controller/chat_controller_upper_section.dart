import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/theming/app_styles.dart';
import '../../../../preparing/screens/demo/widgets/entertainment_components/appbar/headset_icon_component.dart';
import '../../../../preparing/screens/demo/widgets/entertainment_components/appbar/network_icon_component.dart';

class ChatControllerUpperSection extends StatelessWidget {
  const ChatControllerUpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Chat",
            style: TextStyles.font32WhiteSemiBold,
          ),
          const Spacer(),
          Container(
            width: 75.w,
            height: 35.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.r),
                border: Border.all(
                  color: Colors.white,
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
          Gap(12.w),
        ],
      ),
    );
  }
}
