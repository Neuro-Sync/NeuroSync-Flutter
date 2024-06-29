import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/features/home/screens/wheelchair/widgets/wheelchair_controller/wheelchair_controller_lower_section/undo_btn.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_styles.dart';

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
        Gap(60.h),
        const WheelcairBackBtn(),
        Gap(3.h),
      ],
    );
  }
}
