// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/app_cubit/app_cubit.dart';
import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../widgets/child_component.dart';
import '../../entertainment_item.dart';

class RecordComponent extends StatelessWidget {
  const RecordComponent({
    super.key,
  });
Map<String, dynamic> neighbors(BuildContext context) => 
    AppCubit.get(context).recordNeighbors; 
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);

        return ChildBuildBlock(
          bottom: appCubit.recordNeighbors["bottom"],
          left: appCubit.recordNeighbors["left"],
          right: appCubit.recordNeighbors["right"],
          top: appCubit.recordNeighbors["top"],
          childContent: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: appCubit.componentWidget != null
                        ? appCubit.compareWidgets(
                                appCubit.componentWidget, const RecordComponent())
                            ? Colors.blue
                            : AppColors.primarycolor
                        : AppColors.primarycolor,
                    width: 2.sp)),
            child: EntertainmentItem(
              colors: [
                HexColor("#B140B0"),
                HexColor("#7F1280"),
              ],
              imagePath: AppAssets.record_IC,
              subcolor: AppColors.blue,
              color: HexColor("#B140B0"),
            ),
          ),
        );
      },
    );
  }
}
