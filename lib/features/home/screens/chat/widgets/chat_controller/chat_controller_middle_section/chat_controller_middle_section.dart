import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_styles.dart';
import 'video_call_btn.dart';
import 'voice_call_btn.dart';

class ChatControllerMiddleSection extends StatelessWidget {
  const ChatControllerMiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Gap(67.h),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            VoiceCallBtn(),
            VideoCallBtn(),
          ],
        ),
        Gap(33.5.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Divider(
            color: Colors.grey.withOpacity(0.3),
            thickness: 2,
          ),
        ),
        Gap(33.5.h),
      ],
    );
  }
}
