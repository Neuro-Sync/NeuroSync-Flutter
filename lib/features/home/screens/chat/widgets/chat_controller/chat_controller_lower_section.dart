import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/resources/app_assets.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_styles.dart';

class ChatControllerLowerSection extends StatefulWidget {
  const ChatControllerLowerSection({super.key});

  @override
  State<ChatControllerLowerSection> createState() =>
      _ChatControllerLowerSectionState();
}

class _ChatControllerLowerSectionState
    extends State<ChatControllerLowerSection> {
  bool isActivated = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(67.h),
        // controller end
        OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              maximumSize: MaterialStateProperty.all(
                Size(270.w, 66.h),
              ),
              minimumSize: MaterialStateProperty.all(
                Size(270.w, 66.h),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: BorderSide(color: AppColors.blue),
                  borderRadius: BorderRadius.circular(164.0.r),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColors.chattopbarColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Record Voice   ",
                    style: TextStyles.font20PrimaryColorSemiBold),
                Container(
                  height: 40.h,
                  width: 2.w,
                  color: AppColors.mainScreensTitlesBlueColor,
                ),
                Container(
                  width: 31.w,
                  height: 31.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.mainScreensTitlesBlueColor,
                  ),
                  child: Icon(
                    Icons.mic,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                ),
                Gap(1.5.w)
              ],
            )),
        Gap(12.h),
        OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              maximumSize: MaterialStateProperty.all(
                Size(270.w, 66.h),
              ),
              minimumSize: MaterialStateProperty.all(
                Size(270.w, 66.h),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: BorderSide(color: AppColors.blue),
                  borderRadius: BorderRadius.circular(164.0.r),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColors.chattopbarColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Send Location",
                    style: TextStyles.font20PrimaryColorSemiBold),
                Container(
                  height: 40.h,
                  width: 2.w,
                  color: AppColors.mainScreensTitlesBlueColor,
                ),
                Container(
                  width: 31.w,
                  height: 31.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        AppColors.chatSendLocationbtnIconColor.withOpacity(0.2),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0.sp),
                    child: Image.asset(
                      AppAssets.send_IC,
                      height: 17.5.h,
                      width: 17.5.w,
                      color: AppColors.chatSendLocationbtnIconColor,
                    ),
                  ),
                ),
                Gap(1.w)
              ],
            )),
        Gap(49.h),
        OutlinedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              Size(301.w, 56.h),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                side: BorderSide(
                  color: AppColors.blueColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(164.0.r),
              ),
            ),
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.chattopbarColor),
          ),
          child: Image.asset(
            AppAssets.undo_down_IC,
            width: 80.w,
            height: 56.h,
            color: AppColors.mainScreensTitlesBlueColor,
          ),
        ),
    
    
    
    
    
    
    
    
      ],
    );
  }
}
