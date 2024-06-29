import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'clinic_btn.dart';
import 'companion_btn.dart';
import 'home_btn.dart';
import 'office_btn.dart';

class MapControllerMiddleSection extends StatelessWidget {
  const MapControllerMiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Gap(75.h),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MapHomeBtn(),
            MapCompanionBtn(),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MapOfficeBtn(),
            MapClinicBtn(),
          ],
        ),
        Gap(25.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Divider(
            color: Colors.grey.withOpacity(0.3),
            thickness: 2,
          ),
        ),
        Gap(50.h),
      ],
    );
  }
}
//