import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';

class TestNavigationn extends StatelessWidget {
  TestNavigationn({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppText("test navigation", color: Colors.white, fontSize: 40.sp),
              Gap(20.h),
              Icon(
                Icons.check,
                size: 40.sp,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }
}
