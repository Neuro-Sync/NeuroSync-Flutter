// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_assets.dart';
import 'package:neurosync/core/theming/app_colors.dart';
import 'package:neurosync/core/theming/app_font_family.dart';
import '../widgets/home_controller/home_controller_item.dart';
import '../widgets/home_controller/home_controller_middle_section.dart';
import '../widgets/home_controller/home_controller_upper_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 370.w,
              height: 925.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  const HomeControllerUpperSection(),
                  Gap(37.h),
                  const HomeControllerMiddleSection(),
                  Gap(118.h),
                  const HomeControllerItem(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 960.h,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(end: Alignment.bottomCenter, colors: [
                  AppColors.offWhiteColor,
                  AppColors.lightBlueColor.withOpacity(0.2),
                ])),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: AppText(
                        "We Wish you have a good day",
                        fontFamily: FontConstants.loraRegularFont,
                        fontSize: 48.sp,
                        color: AppColors.heavyBlueColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 174.w, top: 40.h),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColors.ambercolor,
                                    borderRadius:
                                        BorderRadius.circular(23.36.r)),
                                width: 283.96.w,
                                height: 359.88.h,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        width: 283.96.w,
                                        height: 230.h,
                                        child: Image.asset(
                                          AppAssets.temp_img,
                                          fit: BoxFit.cover,
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.w),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: AppText(
                                              "Temperature",
                                              fontSize: 24.82.sp,
                                              color: AppColors.blackColor,
                                              fontFamily:
                                                  FontConstants.loraBoldFont,
                                            ),
                                          ),
                                          Gap(5.h),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              AppText(
                                                "40° Celsius",
                                                fontSize: 25.2.sp,
                                                color: AppColors.blackColor,
                                                fontFamily: FontConstants
                                                    .lorasemiBoldFont,
                                              ),
                                              const Spacer(),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 10.w),
                                                child: SvgPicture.asset(
                                                  AppAssets.temp_ic,
                                                  color: AppColors.blackColor,
                                                  width: 32.82.w,
                                                  height: 60.98.h,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Gap(92.w),
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColors.lightmovecolor,
                                    borderRadius:
                                        BorderRadius.circular(23.36.r)),
                                width: 283.96.w,
                                height: 359.88.h,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        width: 150.w,
                                        height: 155.h,
                                        child: Image.asset(
                                          AppAssets.heart_rate_img,
                                          fit: BoxFit.cover,
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.w, top: 80.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: AppText(
                                              "Heart rate",
                                              fontSize: 24.82.sp,
                                              color: AppColors.blackColor,
                                              fontFamily:
                                                  FontConstants.loraBoldFont,
                                            ),
                                          ),
                                          Gap(11.h),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              AppText(
                                                "123 bpm ",
                                                fontSize: 25.2.sp,
                                                color: AppColors.blackColor,
                                                fontFamily: FontConstants
                                                    .lorasemiBoldFont,
                                              ),
                                              const Spacer(),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 10.w),
                                                child: Icon(Icons.favorite,
                                                    color: AppColors.bluecolor,
                                                    size: 32.sp),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Gap(28.h),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColors.pinkcolor,
                                    borderRadius:
                                        BorderRadius.circular(23.36.r)),
                                width: 283.96.w,
                                height: 359.88.h,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 30.h),
                                      child: SizedBox(
                                          width: 150.w,
                                          height: 155.h,
                                          child: Image.asset(
                                            AppAssets.attention_img,
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.w, top: 72.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: AppText(
                                              "Attention",
                                              fontSize: 24.82.sp,
                                              color: AppColors.blackColor,
                                              fontFamily:
                                                  FontConstants.loraBoldFont,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              AppText(
                                                "90%",
                                                fontSize: 25.2.sp,
                                                color: AppColors.blackColor,
                                                fontFamily: FontConstants
                                                    .lorasemiBoldFont,
                                              ),
                                              const Spacer(),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 10.w),
                                                child: SvgPicture.asset(
                                                  AppAssets.brain_ic,
                                                  color: AppColors.blackColor,
                                                  width: 51.58.w,
                                                  height: 44.28.h,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Gap(92.w),
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColors.mintGreencolor,
                                    borderRadius:
                                        BorderRadius.circular(23.36.r)),
                                width: 283.96.w,
                                height: 359.88.h,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 30.h),
                                      child: SizedBox(
                                          width: 150.69.w,
                                          height: 150.9.h,
                                          child: Image.asset(
                                            AppAssets.blood_oxg_img,
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.w, top: 80.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: AppText(
                                              "Blood oxygen level",
                                              fontSize: 24.82.sp,
                                              color: AppColors.blackColor,
                                              fontFamily:
                                                  FontConstants.loraBoldFont,
                                            ),
                                          ),
                                          Gap(11.h),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              AppText(
                                                "95%",
                                                fontSize: 25.2.sp,
                                                color: AppColors.blackColor,
                                                fontFamily: FontConstants
                                                    .lorasemiBoldFont,
                                              ),
                                              const Spacer(),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 10.w),
                                                child: SvgPicture.asset(
                                                  AppAssets.heart_rate_ic,
                                                  color: AppColors.blackColor,
                                                  width: 40.2.w,
                                                  height: 30.64.h,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
