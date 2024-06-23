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
          width: 28.w,
          borderRadius: 39.r,
          iconSize: 0,
          selectedTextStyle: TextStyles.font20PrimaryColorSemiBold,
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
          onPressed: () {
            Navigator.pop(context);
          },
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              Size(350.w, 56.h),
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
      ],
    );
  }
}
