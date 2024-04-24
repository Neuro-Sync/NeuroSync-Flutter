import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../blood_oxgyen_line_graph.dart';
import '../heart_rate_line_graph.dart';

class WheelChairControllerStatisticalSection extends StatelessWidget {
  const WheelChairControllerStatisticalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.h),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HeartRateItem(),
          BloodOxgyenItem(),
        ],
      ),
    );
  }
}
