import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/resources/app_assets.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_styles.dart';

class ContactControllerLowerSection extends StatefulWidget {
  const ContactControllerLowerSection({super.key});

  @override
  State<ContactControllerLowerSection> createState() =>
      _ContactControllerLowerSectionState();
}

class _ContactControllerLowerSectionState
    extends State<ContactControllerLowerSection> {
  int _tabTextIconIndexSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(67.h),
        // controller end
        FlutterToggleTab(
          width: 32.w,
          borderRadius: 39.r,
          iconSize: 0,
          selectedTextStyle:
              TextStyles.font18BlackInterMedium.copyWith(fontSize: 20.sp),
          unSelectedTextStyle: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontSize: 14,
              fontWeight: FontWeight.w400),
          labels: const ["Activate", "Deactivate"],
          selectedIndex: _tabTextIconIndexSelected,
          selectedLabelIndex: (index) {
            setState(() {
              _tabTextIconIndexSelected = index;
            });
          },
        ),
        Gap(39.h),
        OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              Size(301.w, 56.h),
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
            AppAssets.undo_down_IC,
            width: 80.w,
            height: 56.h,
            color: AppColors.darkgrey,
          ),
        ),
      ],
    );
  }
}
