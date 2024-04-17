// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/app_cubit/app_cubit.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../widgets/child_component.dart';

class NotificationIconItem extends StatelessWidget {
  NotificationIconItem({
    super.key,
  });
Map<String, dynamic> neighbors(BuildContext context) => 
    AppCubit.get(context).notificationIconNeighbors; 
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
                              appCubit.componentWidget, NotificationIconItem())
                          ? Colors.blue
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: appCubit.notificationIconNeighbors["bottom"],
            left: appCubit.notificationIconNeighbors["left"],
            right: appCubit.notificationIconNeighbors["right"],
            top: appCubit.notificationIconNeighbors["top"],
            childContent: Icon(
              Icons.notifications_active,
              color: Colors.white,
              size: 32.sp,
            ),
          ),
        );
      },
    );
  }
}
