import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/features/home/screens/home/cubit/home_cubit.dart';
import 'package:neurosync/features/home/screens/wheelchair/screens/wheelchair_screen.dart';
import 'package:neurosync/features/preparing/widgets/child_component.dart';

import '../../../../../../../core/components/app_text.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_font_family.dart';
import '../../../../../../../core/utils/nav_utils.dart';

class WheelchairItem extends StatelessWidget {
  const WheelchairItem({super.key});

  Map<String, dynamic> neighbors(BuildContext context) =>
      HomeCubit.get(context).wheelchairBtnNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit homeCubit = context.read<HomeCubit>();
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: homeCubit.componentWidget != null
                      ? homeCubit.compareWidgets(
                              homeCubit.componentWidget, const WheelchairItem())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            top: homeCubit.wheelchairBtnNeighbors["top"],
            childContent: InkWell(
              onTap: () {
                pushScreen(context, const WheelChairScreen());
              },
              child: Container(
                height: 100.h,
                width: 110.w,
                decoration: BoxDecoration(
                    color: AppColors.chattopbarColor,
                    borderRadius: BorderRadius.circular(9.r)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.wheelchair_pickup,
                      color: AppColors.bluecolorEntertainment,
                    ),
                    Gap(6.h),
                    AppText(
                      "Wheelchair",
                      color: AppColors.blackColor,
                      fontSize: 10.sp,
                      fontFamily: FontConstants.interSemiBoldFont,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
