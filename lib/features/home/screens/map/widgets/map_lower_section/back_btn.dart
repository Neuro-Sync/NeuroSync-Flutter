import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/features/home/screens/map/cubit/map_cubit.dart';
import 'package:neurosync/features/preparing/widgets/child_component.dart';

import '../../../../../../core/resources/app_assets.dart';
import '../../../../../../core/theming/app_colors.dart';

class MapBackBtn extends StatelessWidget {
  const MapBackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        MapCubit mapCubit = MapCubit.get(context);
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: mapCubit.componentWidget != null
                      ? mapCubit.compareWidgets(
                              mapCubit.componentWidget, const MapBackBtn())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            top: mapCubit.getCurrentLocationBtnNeighbors["top"],
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
