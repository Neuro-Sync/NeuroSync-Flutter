import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../widgets/contact_controller/contact_controller_lower_section.dart';
import '../widgets/contact_controller/contact_controller_middle_section.dart';
import '../widgets/contact_controller/contact_controller_upper_section.dart';
import '../widgets/contact_controller/contact_controller_item.dart';
import '../widgets/contacts_item.dart';
import '../widgets/vertical_divider.dart';
//TODO:HANDLING FONTFAMILY PROBLEM
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 364.w,
              height: 925.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 26.h, left: 26.w),
                child: const Column(
                  children: [
                    ContactControllerUpperSection(),
                    ContactsControllerMiddleSection(),
                    ControllerItem(),
                    ContactControllerLowerSection(),
                  ],
                ),
              ),
            ),
            Gap(40.w),
            const CustomVerticalDivider(),
            Gap(40.w),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => const ContactsItem(),
                  separatorBuilder: (context, index) => Gap(12.h),
                  itemCount: 8),
            )
        
          ],
        ),
      ),
    );








  }
}
