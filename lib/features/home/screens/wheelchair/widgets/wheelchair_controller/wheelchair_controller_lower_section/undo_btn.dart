import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/features/preparing/widgets/child_component.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../chat/chat_cubit/chat_cubit.dart';
import '../../../cubit/wheelchair_cubit.dart';

class WheelcairBackBtn extends StatelessWidget {
  const WheelcairBackBtn({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      WheelcairCubit.get(context).backBtnNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WheelcairCubit, WheelcairState>(
      builder: (context, state) {
        WheelcairCubit wheelcairCubit =
            BlocProvider.of<WheelcairCubit>(context);
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: wheelcairCubit.componentWidget != null
                      ? wheelcairCubit.compareWidgets(
                              wheelcairCubit.componentWidget,
                              const WheelcairBackBtn())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            top: wheelcairCubit.backBtnNeighbors["top"],
            childContent: OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                maximumSize: MaterialStateProperty.all(
                  Size(270.w, 66.h),
                ),
                minimumSize: MaterialStateProperty.all(
                  Size(270.w, 66.h),
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
          ),
        );
      },
    );
  }
}
