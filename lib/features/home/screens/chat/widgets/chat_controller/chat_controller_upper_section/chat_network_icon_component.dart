// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/app_cubit/app_cubit.dart';
import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../preparing/widgets/child_component.dart';

class ChatNetworkiconcomponent extends StatelessWidget {
  ChatNetworkiconcomponent({
    super.key,
  });

  Map<String, dynamic> neighbors(BuildContext context) =>
      AppCubit.get(context).networkIconNeighbors;

  bool ontoggled = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);

        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: appCubit.componentWidget != null
                      ? appCubit.compareWidgets(appCubit.componentWidget,
                              ChatNetworkiconcomponent())
                          ? Colors.blue
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: appCubit.networkIconNeighbors["bottom"],
            left: appCubit.networkIconNeighbors["left"],
            right: appCubit.networkIconNeighbors["right"],
            top: appCubit.networkIconNeighbors["top"],
            childContent: Image.asset(
              AppAssets.network_IC,
              width: 19.8.w,
              height: 19.8.h,
            ),
          ),
        );
      },
    );
  }
}
