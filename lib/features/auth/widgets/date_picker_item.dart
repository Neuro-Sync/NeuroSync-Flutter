import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_size.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_font_family.dart';
import '../../../core/theming/app_styles.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  String? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What is your date of birth?",
            style: TextStyles.font48BlackInterBold,
          ),
          Gap(8.h),
          Text(
            "Don't worry, your date of birth will not appear in public",
            style: TextStyles.font18BlackInterMedium.copyWith(fontSize: 20.sp),
          ),
          Gap(44.h),
          Container(
            height: 55.h,
            width: 488.w,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.hintColorRegisterTFFColor,
                width: 0.7,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.sp)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 27),
                AppText(
                  selectedDate ?? "Enter your date of birth",
                  color: AppColors.hintColorRegisterTFFColor,
                  fontSize: FontSizes.small,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    showDatePicker(
                      context: context,
                      firstDate: DateTime(1990),
                      lastDate: DateTime(2030),
                    ).then((value) {
                      if (value != null) {
                        setState(() {
                          selectedDate =
                              "${value.year}-${value.month}-${value.day}";
                        });
                      }
                    });
                  },
                  child: Icon(
                    Icons.calendar_month,
                    color: AppColors.hintColorRegisterTFFColor,
                  ),
                ),
                SizedBox(width: 19.w),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
