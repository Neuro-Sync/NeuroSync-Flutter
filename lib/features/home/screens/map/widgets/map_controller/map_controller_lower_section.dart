import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/resources/app_assets.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_styles.dart';
import '../map_lower_section/get_current_location.dart';

class MapControllerLowerSection extends StatefulWidget {
  const MapControllerLowerSection({super.key});

  @override
  State<MapControllerLowerSection> createState() =>
      _MapControllerLowerSectionState();
}

class _MapControllerLowerSectionState extends State<MapControllerLowerSection> {
  bool isActivated = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(67.h),
        GetCurrentLocationBtn(),
        Gap(49.h),
      ],
    );
  }
}
