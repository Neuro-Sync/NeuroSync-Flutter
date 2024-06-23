import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/theming/app_colors.dart';
import '../widgets/contact_controller/contact_controller_lower_section.dart';
import '../widgets/contact_controller/contact_controller_middle_section.dart';
import '../widgets/contact_controller/contact_controller_upper_section.dart';
import '../widgets/contact_controller/contacts_controller_item/contacts_controller_item.dart';
import '../widgets/contacts_item.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
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
              child: const Column(
                children: [
                  ContactControllerUpperSection(),
                  ContactsControllerMiddleSection(),
                  ContactsControllerItem(),
                  ContactControllerLowerSection(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: AppColors.contactsBlackcolor,
                child: Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: ListView.separated(
                      itemBuilder: (context, index) => const ContactsItem(),
                      separatorBuilder: (context, index) => Gap(12.h),
                      itemCount: 8),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
