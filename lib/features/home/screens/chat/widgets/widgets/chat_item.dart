import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/core/theming/app_colors.dart';
import '../../../../../../core/theming/app_styles.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(top: 26.h, start: 20.w, end: 20.w),
      child: Container(
          height: 70.h,
          width: 800.w,
          decoration: BoxDecoration(
            color: index % 2 == 1
                ? AppColors.chattopbarColor
                : AppColors.mainScreensTitlesBlueColor.withOpacity(0.8),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(index % 2 == 0 ? 15.r : 0),
              topRight: Radius.circular(15.0.r),
              bottomLeft: Radius.circular(index % 2 == 1 ? 15.0.r : 0),
              bottomRight: Radius.circular(15.0.r),
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(10.0.sp),
              child: Text(
                "OMG 😲 do you remember what you did last night at the work?",
                style: TextStyles.font20PrimaryColorSemiBold.copyWith(
                    color: index % 2 == 0
                        ? Colors.white
                        : AppColors.mainScreensTitlesBlueColor),
              ),
            ),
          )),
    );
  }
}
