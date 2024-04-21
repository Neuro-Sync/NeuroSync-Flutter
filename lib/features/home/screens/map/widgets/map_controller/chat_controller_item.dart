import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/theming/app_styles.dart';

import 'dart:math' as math;

import '../../../../../../core/theming/app_colors.dart';

class ChatControllerItem extends StatelessWidget {
  const ChatControllerItem({super.key});

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
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_up,
                color: AppColors.mainScreensTitlesBlueColor,
                size: 50.sp,
              )),
          Column(
            children: [
              Container(
                  height: 50.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                      color: AppColors.chattopbarColor,
                      border: Border.fromBorderSide(BorderSide(
                          width: 1,
                          color: AppColors.mainScreensTitlesBlueColor)),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          110.r,
                        ),
                        topRight: Radius.circular(110.r),
                      )),
                  child: Center(
                      child: Text("Play",
                          style: TextStyles.font20PrimaryColorSemiBold
                              .copyWith(fontSize: 16.sp)))),
              Gap(10.h),
              Container(
                  height: 50.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                      border: Border.fromBorderSide(BorderSide(
                          width: 1,
                          color: AppColors.mainScreensTitlesBlueColor)),
                      color: AppColors.chattopbarColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(110.r),
                        bottomRight: Radius.circular(110.r),
                      )),
                  child: Center(
                    child: Text("Return",
                        style: TextStyles.font20PrimaryColorSemiBold
                            .copyWith(fontSize: 16.sp)),
                  )),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.mainScreensTitlesBlueColor,
                size: 50.sp,
              ))
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
