import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../../core/theming/app_colors.dart';

class ImagesEntertainmentControllerLowerItem extends StatefulWidget {
  const ImagesEntertainmentControllerLowerItem({super.key});

  @override
  State<ImagesEntertainmentControllerLowerItem> createState() =>
      _ImagesEntertainmentControllerLowerItemState();
}

class _ImagesEntertainmentControllerLowerItemState
    extends State<ImagesEntertainmentControllerLowerItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(67.h),
        OutlinedButton(
          onPressed: () {
            Navigator.pop(context);
          },
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
