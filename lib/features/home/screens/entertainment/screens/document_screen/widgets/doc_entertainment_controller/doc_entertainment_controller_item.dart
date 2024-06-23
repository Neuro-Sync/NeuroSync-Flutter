import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/theming/app_styles.dart';

import 'dart:math' as math;

import '../../../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../../core/resources/app_assets.dart';

class DocEntertainmentControllerItem extends StatelessWidget {
  const DocEntertainmentControllerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260.w,
      height: 260.h,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.blueColor, width: 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              AppAssets.arrow_up_ic,
              width: 30.w,
              height: 30.h,
            ),
          ),
          Gap(20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  AppAssets.arrow_left_ic,
                  width: 30.w,
                  height: 30.h,
                ),
              ),
              Gap(20.h),
              Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.chattopbarColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(30.sp),
                        child: Center(
                            child: Text("Open",
                                style: TextStyles.font20PrimaryColorSemiBold
                                    .copyWith(fontSize: 16.sp))),
                      )),
                ],
              ),
              Gap(20.h),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  AppAssets.arrow_right_ic,
                  width: 30.w,
                  height: 30.h,
                ),
              ),
            ],
          ),
          Gap(20.h),
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              AppAssets.arrow_down_ic,
              width: 30.w,
              height: 30.h,
              color: AppColors.mainScreensTitlesBlueColor,
            ),
          )
        ],
      ),
    );
  }
}

class MyArc extends StatelessWidget {
  final double diameter;

  const MyArc({super.key, this.diameter = 200});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(),
      size: Size(diameter, diameter),
    );
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.blue;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      math.pi,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
