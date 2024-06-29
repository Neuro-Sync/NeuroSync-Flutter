import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:gap/gap.dart';
import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_styles.dart';
import 'entertainment_back_btn.dart';

class EntertainmentControllerLowerSection extends StatelessWidget {
  const EntertainmentControllerLowerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(67.h),
        const EntertainmentBackBtn(),
      ],
    );
  }
}
