import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/resources/app_assets.dart';

import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_styles.dart';

class ContactsControllerMiddleSection extends StatelessWidget {
  const ContactsControllerMiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(33.h),
          OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(323.w, 59.h),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(164.0.r),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.chattopbarColor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Send Alert",
                    style: TextStyles.font20PrimaryColorSemiBold,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 40.h,
                        width: 2.w,
                        color: AppColors.grey,
                      ),
                      Gap(28.w),
                      Icon(
                        Icons.info,
                        color: AppColors.chatSendLocationbtnIconColor
                            .withOpacity(0.5),
                        size: 38.sp,
                      ),
                    ],
                  ),
                ],
              )),
          Gap(25.h),
          OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(323.w, 59.h),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(164.0.r),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.chattopbarColor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Search",
                    style: TextStyles.font20PrimaryColorSemiBold,
                  ),
                  Gap(0.4.w),
                  Container(
                    width: 32.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.chatSendLocationbtnIconColor
                          .withOpacity(0.2),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.mic,
                        color: AppColors.chatSendLocationbtnIconColor,
                        size: 25.sp,
                      ),
                    ),
                  ),
                ],
              )),
          Gap(36.h),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        Size(154.w, 51.h),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          side: BorderSide(color: AppColors.darkgrey),
                          borderRadius: BorderRadius.circular(164.0.r),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppColors.chattopbarColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 32.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.chatSendLocationbtnIconColor
                                .withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.sp),
                            child: Image.asset(
                              AppAssets.call_IC,
                              height: 11.h,
                              width: 11.w,
                              color: AppColors.chatSendLocationbtnIconColor,
                            ),
                          ),
                        ),
                        Text(
                          "Samy",
                          style: TextStyles.font20PrimaryColorSemiBold,
                        ),
                      ],
                    )),
              ),
              Gap(14.w),
              Expanded(
                child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        Size(154.w, 51.h),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(164.0.r),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppColors.chattopbarColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 32.w,
                          height: 32.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.chatSendLocationbtnIconColor
                                .withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.sp),
                            child: Image.asset(
                              AppAssets.call_IC,
                              height: 11.h,
                              width: 11.w,
                              color: AppColors.chatSendLocationbtnIconColor,
                            ),
                          ),
                        ),
                        Text(
                          "Samy",
                          style: TextStyles.font20PrimaryColorSemiBold,
                        ),
                      ],
                    )),
              ),
            ],
          ),
          Gap(67.h),
        ],
      ),
    );
  }
}
