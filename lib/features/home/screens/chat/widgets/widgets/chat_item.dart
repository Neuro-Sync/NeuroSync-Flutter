import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/core/theming/app_colors.dart';
import '../../../../../../core/theming/app_styles.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key, required this.index, required this.content});
  final int index;
  final Widget content;
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
          child: Padding(
            padding: EdgeInsets.only(left: index == 1 || index == 3 ? 30.w : 0),
            child: Align(alignment: Alignment.centerLeft, child: content),
          )),
    );
  }
}
