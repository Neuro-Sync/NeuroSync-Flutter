// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/app_cubit/app_cubit.dart';
import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../widgets/child_component.dart';
import '../../entertainment_item.dart';
import '../../entertainment_items_neighbours.dart';

class FilesComponent extends StatelessWidget {
  FilesComponent({
    super.key,
  });
Map<String, dynamic> neighbors(BuildContext context) => 
    AppCubit.get(context).filesNeighbors; 
  

 

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
                              appCubit.componentWidget, FilesComponent())
                          ? Colors.blue
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: appCubit.filesNeighbors["bottom"],
            left: appCubit.filesNeighbors["left"],
            right: appCubit.filesNeighbors["right"],
            top: appCubit.filesNeighbors["top"],
            childContent: EntertainmentItem(
              colors: [
                HexColor("#517DF0"),
                HexColor("#84A3F5"),
              ],
              imagePath: AppAssets.files_IC,
              color: HexColor("#84A3F5"),
            ),
          ),
        );
      },
    );
  }
}
