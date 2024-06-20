// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../widgets/entertainment_controller/entertainment_controller_item.dart';
import '../widgets/entertainment_controller/entertainment_controller_lower_section.dart';
import '../widgets/entertainment_controller/entertainment_controller_upper_section.dart';
import '../widgets/general_entertainment_content.dart';

class EnterTainMentScreen extends StatelessWidget {
  const EnterTainMentScreen({super.key});

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
                  const EntertainmentControllerUpperSection(),
                  Gap(250.h),
                  const EntertainmentControllerItem(),
                  Gap(80.h),
                  const EntertainmentControllerLowerSection(),
                ],
              ),
            ),
            const GeneralEntertainmentContent()
          ],
        ),
      ),
    );
  }
}
