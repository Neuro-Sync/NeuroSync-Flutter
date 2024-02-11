// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_colors.dart';
import 'package:neurosync/core/resources/app_font_family.dart';
import 'package:neurosync/core/resources/app_size.dart';

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
          AppText(
            "What’s Your gender?",
            color: Colors.white,
            fontSize: FontSizes.veryLarge,
            fontFamily: FontConstants.loraBoldFont,
          ),
          Gap(8.h),
          AppText(
            "we respect and celebrate diversity. Please choose the gender",
            color: AppColors.subtitleRegisterationColor,
            fontSize: FontSizes.small,
          ),
          Gap(44.h),
          AppText(
            'Gender',
            color: AppColors.lightwhite,
            fontFamily: FontConstants.loraMediumFont,
            fontSize: FontSizes.medium,
          ),
           SizedBox(height: 8.h),
          Container(
            color: AppColors.dropDownColor,
            child: Row(
              children: [
                Expanded(
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
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
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
