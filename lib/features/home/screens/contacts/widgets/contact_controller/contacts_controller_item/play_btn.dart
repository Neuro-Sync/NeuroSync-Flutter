import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/theming/app_colors.dart';

class ContactsCallBtn extends StatelessWidget {
  const ContactsCallBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: AppColors.chattopbarColor,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: EdgeInsets.all(30.sp),
          child: Center(
              child: Icon(
            Icons.phone,
            color: AppColors.darkbluecolor,
            size: 50.sp,
          )),
        ));
  }
}
