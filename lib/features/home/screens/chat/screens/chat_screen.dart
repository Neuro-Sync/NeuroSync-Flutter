import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_assets.dart';
import 'package:neurosync/core/resources/app_size.dart';
import 'package:neurosync/core/theming/app_colors.dart';
import 'package:neurosync/core/theming/app_styles.dart';
import '../../contacts/widgets/vertical_divider.dart';
import '../widgets/chat_controller/chat_controller_item.dart';
import '../widgets/chat_controller/chat_controller_lower_section.dart';
import '../widgets/chat_controller/chat_controller_middle_section.dart';
import '../widgets/chat_controller/chat_controller_upper_section.dart';
import '../widgets/contacts_item.dart';

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
              width: 380.w,
              height: 925.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: const Column(
                children: [
                  ChatControllerUpperSection(),
                  ChatControllerMiddleSection(),
                  ChatControllerItem(),
                  ChatControllerLowerSection(),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Container(
                        height: 80.h,
                        decoration: BoxDecoration(
                            color: AppColors.chattopbarColor.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(10.sp)),
                        child: Row(
                          children: [
                            Gap(20.w),
                            const CircleAvatar(
                              backgroundImage: AssetImage(AppAssets.person_IC),
                            ),
                            Gap(20.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("samy",
                                    style:
                                        TextStyles.font20PrimaryColorSemiBold),
                                Gap(2.h),
                                Text(
                                  "online",
                                  style: TextStyles.font18BlackInterMedium
                                      .copyWith(
                                          color: Colors.green, fontSize: 14.sp),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.w,
                      ),
                      child: SizedBox(
                        height: AppSize.getHeight(context),
                        child: ListView.separated(
                            itemBuilder: (context, index) => Align(
                                  alignment: index % 2 == 1
                                      ? Alignment.centerLeft
                                      : Alignment.centerRight,
                                  child: ChatItem(
                                    index: index,
                                  ),
                                ),
                            separatorBuilder: (context, index) => Gap(12.h),
                            itemCount: 10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
