import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/features/home/screens/contacts/screens/contacts_screen.dart';

import '../../../../../../../core/components/app_text.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_font_family.dart';
import '../../../../../../../core/utils/nav_utils.dart';

class ContactsItem extends StatelessWidget {
  const ContactsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pushScreen(context, const ContactsScreen());
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
              Icons.contacts,
              color: AppColors.bluecolorEntertainment,
            ),
            Gap(6.h),
            AppText(
              "Contacts",
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
