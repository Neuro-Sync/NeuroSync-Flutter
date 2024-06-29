import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/features/home/screens/map/screens/map_screen.dart';
import 'package:neurosync/features/preparing/widgets/child_component.dart';

import '../../../../../../../core/components/app_text.dart';
import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_font_family.dart';
import '../../../../../../../core/utils/nav_utils.dart';
import '../../../cubit/home_cubit.dart';

class MapItem extends StatelessWidget {
  const MapItem({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      HomeCubit.get(context).mapBtnBtnNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit homeCubit = HomeCubit.get(context);
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: homeCubit.componentWidget != null
                      ? homeCubit.compareWidgets(
                              homeCubit.componentWidget, const MapItem())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            top: homeCubit.mapBtnBtnNeighbors["top"],
            childContent: InkWell(
              onTap: () {
                pushScreen(context, const MapScreen());
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
                    SvgPicture.asset(
                      AppAssets.map_ic,
                      width: 30.w,
                      height: 30.h,
                    ),
                    Gap(6.h),
                    AppText(
                      "Map",
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
