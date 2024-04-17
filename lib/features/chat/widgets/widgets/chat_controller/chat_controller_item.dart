import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/theming/app_styles.dart';

import '../../../../../core/theming/app_colors.dart';
import 'dart:math' as math;

class ChatControllerItem extends StatelessWidget {
  const ChatControllerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260.w,
      height: 260.h,
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: Colors.white)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_up,
                color: Colors.white,
                size: 50.sp,
              )),
          Column(
            children: [
              Container(
                  height: 50.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                      color: AppColors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(110.r),
                        topRight: Radius.circular(110.r),
                      )),
                  child: Center(
                      child: Text(
                    "Play",
                    style: TextStyles.font20greySemiBold
                        .copyWith(color: Colors.white,fontSize: 18.sp),
                  ))),
              Gap(10.h),
              Container(
                  height: 50.h,
                  width: 110.w,
                  decoration: BoxDecoration(
                      color: AppColors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(110.r),
                        bottomRight: Radius.circular(110.r),
                      )),
                  child: Center(
                    child: Text(
                      "Return",
                      style: TextStyles.font20greySemiBold
                          .copyWith(color: Colors.white, fontSize: 18.sp),
                    ),
                  )),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
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
