import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../../../../core/components/app_text.dart';

class EntertainmentMediaItem extends StatelessWidget {
  const EntertainmentMediaItem(
      {super.key,
      required this.path,
      required this.title,
      required this.bgColor,
      required this.onTap});
  final String path;
  final String title;
  final Color bgColor;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Container(
            width: 272.w,
            height: 272.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
              color: bgColor,
            ),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.w),
                child: Column(
                  children: [
                    Gap(20.h),
                    SvgPicture.asset(
                      path,
                      width: 142.w,
                      height: 142.h,
                    ),
                    Gap(10.h),
                    AppText(
                      title,
                      fontSize: 25.sp,
                    )
                  ],
                ))),
      ),
    );
  }
}
