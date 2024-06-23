import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_size.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_font_family.dart';

class RegisterationCodeItem extends StatelessWidget {
  const RegisterationCodeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              "Enter the 6 digit code",
              color: Colors.black,
              fontSize: FontSizes.veryLarge,
              fontFamily: FontConstants.interBoldFont,
            ),
            Gap(8.h),
            AppText(
              "The otp code will be sent to email   sa **** **** *@gmail.com",
              color: AppColors.subtitleRegisterationColor,
              fontSize: FontSizes.small,
            ),
            SizedBox(
              width: 500.w,
              height: 90.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(
                    6,
                    (index) => Expanded(
                          child: _textFieldOTP(context,
                              first: index == 0 ? true : false,
                              last: index == 5 ? true : false,
                              controller: TextEditingController()),
                        )),
              ),
            ),
            Row(
              children: [
                AppText(
                  "Resend code",
                  color: AppColors.blackColor,
                  fontSize: FontSizes.small,
                  fontFamily: FontConstants.interMediumFont,
                ),
                Gap(8.h),
                AppText(
                  "57sec",
                  color: AppColors.blackColor,
                  fontSize: FontSizes.small,
                  fontFamily: FontConstants.interRegularFont,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _textFieldOTP(context, {bool? first, last, controller}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.5.w),
      child: SizedBox(
        height: 85.h,
        child: AspectRatio(
          aspectRatio: 1.0,
          child: TextField(
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.isEmpty && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.blackColor),
            keyboardType: TextInputType.number,
            maxLength: 1,
            controller: controller,
            decoration: InputDecoration(
              counter: const Offstage(), //clear counter of max length
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(8.sp)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(8.sp)),
            ),
          ),
        ),
      ),
    );
  }
}
