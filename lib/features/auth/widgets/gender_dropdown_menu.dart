// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_size.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_font_family.dart';
import '../../../core/theming/app_styles.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? selectedGender;
  TextEditingController customGenderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What’s Your gender?",
            style: TextStyles.font48BlackInterBold,
          ),
          Gap(10.h),
          Text(
            "we respect and celebrate diversity. Please choose the gender",
            style: TextStyles.font18BlackInterMedium.copyWith(fontSize: 20.sp),
          ),
          Gap(10.h),
          AppText(
            'Gender',
            color: AppColors.blackColor,
            fontFamily: FontConstants.loraMediumFont,
            fontSize: FontSizes.medium,
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Container(
                width: 500.w,
                height: 90.h,
                child: DropdownButtonFormField<String>(
                  value: selectedGender,
                  onChanged: (newValue) {
                    setState(() {
                      selectedGender = newValue;
                      customGenderController.clear();
                    });
                  },
                  dropdownColor: AppColors.dropDownColor,
                  items: ['Male', 'Female', 'Other']
                      .map((gender) => DropdownMenuItem<String>(
                            value: gender,
                            child: AppText(gender,
                                color: Colors.black.withOpacity(0.75)),
                          ))
                      .toList(),
                  decoration: InputDecoration(
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: 'Select Gender',
                      hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.75),
                          fontSize: FontSizes.medium,
                          fontFamily: FontConstants.loraRegularFont)),
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    customGenderController.dispose();
    super.dispose();
  }
}
