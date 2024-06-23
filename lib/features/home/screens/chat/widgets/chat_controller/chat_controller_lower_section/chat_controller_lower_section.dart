import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_styles.dart';
import 'back_btn.dart';
import 'record_voice_btn.dart';
import 'send_location_btn.dart';

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
        const RecordVoiceBtn(),
        Gap(12.h),
        const SendLocationBtn(),
        Gap(49.h),
        const BackBtn(),
      ],
    );
  }
}
