import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_size.dart';
import 'package:neurosync/features/auth/widgets/registeration_tff.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_font_family.dart';

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
          AppText(
            title.toString(),
            color: Colors.white,
            fontSize: FontSizes.veryLarge,
            fontFamily: FontConstants.loraBoldFont,
          ),
          Gap(8.h),
          AppText(
            subtitle.toString(),
            color: AppColors.subtitleRegisterationColor,
            fontSize: FontSizes.small,
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
