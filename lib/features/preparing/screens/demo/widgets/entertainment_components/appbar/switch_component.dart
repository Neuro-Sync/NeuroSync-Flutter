// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/app_cubit/app_cubit.dart';
import '../../../../../../../core/components/custom_switch.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../widgets/child_component.dart';

class SwitchComponent extends StatelessWidget {
  const SwitchComponent({super.key});
Map<String, dynamic> neighbors(BuildContext context) => 
    AppCubit.get(context).switchIconNeighbors; 
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
                              appCubit.componentWidget, const SwitchComponent())
                          ? Colors.blue
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: appCubit.networkIconNeighbors["bottom"],
            left: appCubit.networkIconNeighbors["left"],
            right: appCubit.networkIconNeighbors["right"],
            top: appCubit.networkIconNeighbors["top"],
            childContent: CustomSwitch(
              onToggled: (isToggled) {
                // setState(() {
                //   ontoggled = isToggled;
                // });
              },
              initialToggle: true,
            ),
          ),
        );
      },
    );
  }
}
