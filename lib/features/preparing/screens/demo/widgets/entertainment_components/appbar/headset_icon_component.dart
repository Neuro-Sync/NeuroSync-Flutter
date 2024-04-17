// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/core/app_cubit/app_cubit.dart';
import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../widgets/child_component.dart';

class HeadsetIconComponent extends StatelessWidget {
  HeadsetIconComponent({
    super.key,
  });

  bool ontoggled = false;

  Map<String, dynamic> neighbors(BuildContext context) =>
      AppCubit.get(context).headsetIconNeighbors;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);

        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: appCubit.componentWidget != null
                      ? appCubit.compareWidgets(
                              appCubit.componentWidget, HeadsetIconComponent())
                          ? Colors.blue
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: appCubit.headsetIconNeighbors["bottom"],
            left: appCubit.headsetIconNeighbors["left"],
            right: appCubit.headsetIconNeighbors["right"],
            top: appCubit.headsetIconNeighbors["top"],
            childContent: Image.asset(
              AppAssets.headset_IC,
              width: 19.8.w,
              height: 19.8.h,
            ),
          ),
        );
      },
    );
  }
}
