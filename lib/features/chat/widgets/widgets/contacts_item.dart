import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_styles.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 26.h),
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 400.w),
        child: Container(
            height: 70.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(0.0),
                topRight: Radius.circular(15.0.r),
                bottomLeft: Radius.circular(15.0.r),
                bottomRight: Radius.circular(15.0.r),
              ),
            ),
            child: Center(
              child: Padding(
                padding:  EdgeInsets.all(10.0.sp),
                child: Text(
                  "OMG 😲 do you remember what you did last night at the work?",
                  style: TextStyles.font20greySemiBold,
                ),
              ),
            )),
      ),
    );
  }
}
