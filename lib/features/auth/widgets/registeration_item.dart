import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/theming/app_styles.dart';
import 'package:neurosync/features/auth/widgets/registeration_tff.dart';

class RegisterationItem extends StatelessWidget {
  const RegisterationItem(
      {super.key,
      required this.title,
      required this.subtitle,
      this.controller,
      required this.hinttxt,
      this.type,
      this.suffixIcon});
  final String title;
  final String subtitle;
  final String hinttxt;
  final TextEditingController? controller;
  final TextInputType? type;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toString(),
            style: TextStyles.font48BlackInterBold,
          ),
          Gap(8.h),
          Text(
            subtitle.toString(),
            style: TextStyles.font18BlackInterMedium.copyWith(fontSize: 20.sp),
          ),
          Gap(44.h),
          RegisterationTextFormField(
            controller: controller,
            hintTxt: hinttxt,
            type: type,
            suffixIcon: suffixIcon,
          )
        ],
      ),
    );
  }
}
