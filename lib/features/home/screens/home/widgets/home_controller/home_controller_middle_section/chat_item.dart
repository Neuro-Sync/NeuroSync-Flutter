import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/components/app_text.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_font_family.dart';
import '../../../../../../../core/utils/nav_utils.dart';
import '../../../../chat/screens/chat_screen.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pushScreen(context, const ChatScreen());
      },
      child: Container(
        height: 65.h,
        width: 110.w,
        decoration: BoxDecoration(
            color: AppColors.chattopbarColor,
            borderRadius: BorderRadius.circular(9.r)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat,
              color: AppColors.bluecolorEntertainment,
            ),
            Gap(6.h),
            AppText(
              "Chat",
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
