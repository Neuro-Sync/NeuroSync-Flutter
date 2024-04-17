import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_assets.dart';
import 'package:neurosync/core/theming/app_colors.dart';
import 'package:neurosync/core/theming/app_styles.dart';
import 'package:neurosync/features/chat/widgets/widgets/contacts_item.dart';
import '../../contatcs/widgets/vertical_divider.dart';
import '../widgets/widgets/chat_controller/chat_controller_item.dart';
import '../widgets/widgets/chat_controller/chat_controller_lower_section.dart';
import '../widgets/widgets/chat_controller/chat_controller_middle_section.dart';
import '../widgets/widgets/chat_controller/chat_controller_upper_section.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 375.w,
              height: 925.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 26.h, left: 20.w),
                child: const Column(
                  children: [
                    ChatControllerUpperSection(),
                    ChatControllerMiddleSection(),
                    ChatControllerItem(),
                    ChatControllerLowerSection(),
                  ],
                ),
              ),
            ),
            Gap(40.w),
            const CustomVerticalDivider(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 30.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Gap(15.h),
                      Padding(
                        padding: EdgeInsets.only(left: 8.w),
                        child: Container(
                          height: 80.h,
                          decoration: BoxDecoration(
                              color: AppColors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10.sp)),
                          child: Row(
                            children: [
                              Gap(20.w),
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage(AppAssets.person_IC),
                              ),
                              Gap(20.w),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "samy",
                                    style: TextStyles
                                        .font24lightlightgreySemiBold
                                        .copyWith(color: Colors.white),
                                  ),
                                  Gap(2.h),
                                  Text(
                                    "online",
                                    style: TextStyles
                                        .font24lightlightgreySemiBold
                                        .copyWith(color: Colors.green),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: SizedBox(
                          height: 850.h,
                          child: ListView.separated(
                              itemBuilder: (context, index) => const ChatItem(),
                              separatorBuilder: (context, index) => Gap(12.h),
                              itemCount: 8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
