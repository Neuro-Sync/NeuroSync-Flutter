import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/theming/app_styles.dart';

import 'dart:math' as math;

import '../../../../../../core/theming/app_colors.dart';

class WheelChairControllerItem extends StatelessWidget {
  const WheelChairControllerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      height: 250.h,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    color: AppColors.mainScreensTitlesBlueColor,
                    size: 50.sp,
                  )),
              Container(
                  height: 96.h,
                  width: 96.h,
                  decoration: BoxDecoration(
                      border: Border.fromBorderSide(BorderSide(
                          width: 1,
                          color: AppColors.mainScreensTitlesBlueColor)),
                      color: AppColors.chattopbarColor,
                      borderRadius: BorderRadius.circular(147.r)),
                  child: Center(
                    child: Text("Enter",
                        style: TextStyles.font20PrimaryColorSemiBold
                            .copyWith(fontSize: 16.sp)),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: AppColors.mainScreensTitlesBlueColor,
                    size: 50.sp,
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
