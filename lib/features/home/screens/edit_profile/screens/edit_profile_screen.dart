import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/theming/app_colors.dart';
import 'package:neurosync/core/theming/app_font_family.dart';

import '../widgets/profile_controller/profile_controller_item.dart';
import '../widgets/profile_controller/profile_controller_lower_section.dart';
import '../widgets/profile_controller/profile_controller_middle_section.dart';
import '../widgets/profile_controller/profile_controller_upper_section.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          width: 380.w,
          height: 925.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: const Column(
            children: [
              ProfileControllerUpperSection(),
              ProfileControllerItem(),
              ProfileControllerLowerSection(),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 976.h,
            decoration: BoxDecoration(color: AppColors.darkbluecolor),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 52.h),
                  child: AppText(
                    "Edit Profile",
                    fontSize: 55.sp,
                    color: Colors.white,
                    fontFamily: FontConstants.interBoldFont,
                  ),
                ),
                Gap(20.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(20.w),
                    CircleAvatar(
                        radius: 70.r,
                        child: Icon(
                          Icons.person,
                          size: 50.sp,
                        )),
                    Gap(30.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          "Name",
                          fontSize: 22.sp,
                          fontFamily: FontConstants.interBoldFont,
                          color: Colors.white,
                        ),
                        Gap(10.h),
                        SizedBox(
                          width: 409.2.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "samy",
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                border: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintStyle: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: FontConstants.interMediumFont,
                                    color: Colors.white)),
                          ),
                        ),
                        Gap(10.h),
                        AppText(
                          "Email",
                          fontSize: 22.sp,
                          fontFamily: FontConstants.interBoldFont,
                          color: Colors.white,
                        ),
                        Gap(10.h),
                        SizedBox(
                          width: 409.2.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                border: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintStyle: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: FontConstants.interMediumFont,
                                    color: Colors.white)),
                          ),
                        ),
                        Gap(10.h),
                        AppText(
                          "Date of Birth",
                          fontSize: 22.sp,
                          fontFamily: FontConstants.interBoldFont,
                          color: Colors.white,
                        ),
                        Gap(10.h),
                        SizedBox(
                          width: 409.2.w,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "25/5/2025",
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                border: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintStyle: TextStyle(
                                    fontSize: 17.sp,
                                    fontFamily: FontConstants.interMediumFont,
                                    color: Colors.white)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Gap(20.h),
                Column(
                  children: [
                    Divider(
                      endIndent: 165.w,
                      indent: 165.w,
                      color: Colors.white,
                      thickness: 5,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 245.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(40.h),
                      SizedBox(
                        width: 475.w,
                        child: Row(
                          children: [
                            AppText(
                              "Settings",
                              fontSize: 25.sp,
                              fontFamily: FontConstants.lorasemiBoldFont,
                              color: Colors.white,
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.settings,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Gap(63.h),
                      SizedBox(
                        width: 475.w,
                        child: Row(
                          children: [
                            AppText(
                              "Companion",
                              fontSize: 25.sp,
                              fontFamily: FontConstants.lorasemiBoldFont,
                              color: Colors.white,
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.people,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Gap(63.h),
                      SizedBox(
                        width: 475.w,
                        child: Row(
                          children: [
                            AppText(
                              "Calibration & Validation   ",
                              fontSize: 25.sp,
                              fontFamily: FontConstants.lorasemiBoldFont,
                              color: Colors.white,
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
