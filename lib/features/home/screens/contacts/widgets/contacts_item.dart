import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/theming/app_colors.dart';

import '../../../../../core/theming/app_styles.dart';

class ContactsItem extends StatelessWidget {
  const ContactsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 26.h),
      child: Row(
        children: [
          Container(
            height: 83.h,
            width: 87.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColors.lightlightgrey),
            child: Icon(
              Icons.person,
              color: Colors.black.withOpacity(0.5),
              size: 50.sp,
            ),
          ),
          Gap(18.w),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "samy",
                style: TextStyles.font24lightlightgreySemiBold,
              ),
              Text(
                "01028500542",
                style: TextStyles.font24lightlightgreySemiBold,
              ),
            ],
          ),
          Gap(680.w),
          Icon(
            Icons.phone,
            color: Colors.white,
            size: 45.sp,
          )
        ],
      ),
    );
  }
}
