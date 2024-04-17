import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SquareCard extends StatelessWidget {
  const SquareCard({super.key, required this.cardChild, this.color});
  final Widget cardChild;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 3.5.w),
        color: color ?? Colors.white.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: cardChild);
  }
}
