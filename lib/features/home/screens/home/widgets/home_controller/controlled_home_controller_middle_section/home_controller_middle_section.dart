import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/features/home/screens/home/widgets/home_controller/controlled_home_controller_middle_section/chat_item.dart';
import 'package:neurosync/features/home/screens/home/widgets/home_controller/controlled_home_controller_middle_section/contacts_item.dart';
import 'package:neurosync/features/home/screens/home/widgets/home_controller/controlled_home_controller_middle_section/entertainment_item.dart';
import 'package:neurosync/features/home/screens/home/widgets/home_controller/controlled_home_controller_middle_section/wheelchair_item.dart';
import '../../../cubit/home_cubit.dart';
import 'map_item.dart';
import 'profile_item.dart';

class HomeControllerMiddleSection extends StatelessWidget {
  const HomeControllerMiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 180.h,
      width: 280.w,
      child: Center(
        child: Column(
          children: [
            const Row(
              children: [
                ProfileItem(),
                Spacer(),
                EntertainmentItem(),
              ],
            ),
            Gap(20.h),
            const Row(
              children: [
                MapItem(),
                Spacer(),
                ChatItem(),
              ],
            ),
            Gap(20.h),
            const Row(
              children: [
                WheelchairItem(),
                Spacer(),
                ContactsItem(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
