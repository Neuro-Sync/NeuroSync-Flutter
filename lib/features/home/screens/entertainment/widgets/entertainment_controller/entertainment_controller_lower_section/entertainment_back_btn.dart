import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../preparing/widgets/child_component.dart';
import '../../../cubit/entertainment_cubit.dart';

class EntertainmentBackBtn extends StatelessWidget {
  const EntertainmentBackBtn({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      EntertainmentCubit.get(context).backBtnNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EntertainmentCubit, EntertainmentState>(
      builder: (context, state) {
        EntertainmentCubit entertainmentCubit = EntertainmentCubit.get(context);
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: entertainmentCubit.selectedControllercomponent != null
                      ? entertainmentCubit.compareWidgets(
                              entertainmentCubit.selectedControllercomponent,
                              const EntertainmentBackBtn())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: entertainmentCubit.backBtnNeighbors["bottom"],
            left: entertainmentCubit.backBtnNeighbors["left"],
            right: entertainmentCubit.backBtnNeighbors["right"],
            top: entertainmentCubit.backBtnNeighbors["top"],
            childContent: OutlinedButton(
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
          ),
        );
      },
    );
  }
}
