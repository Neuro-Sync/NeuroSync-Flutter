// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/app_cubit/app_cubit.dart';
import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../widgets/child_component.dart';
import '../../entertainment_item.dart';

class VideosFilesComponent extends StatelessWidget {
  const VideosFilesComponent({
    super.key,
  });

 Map<String, dynamic> neighbors(BuildContext context) => 
    AppCubit.get(context).videosNeighbors; 

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
                              appCubit.componentWidget, const VideosFilesComponent())
                          ? Colors.blue
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: appCubit.videosNeighbors["bottom"],
            left: appCubit.videosNeighbors["left"],
            right: appCubit.videosNeighbors["right"],
            top: appCubit.videosNeighbors["top"],
            childContent: EntertainmentItem(
              colors: [
                HexColor("#469E56"),
                HexColor("#0E8622"),
              ],
              imagePath: AppAssets.raw_images_IC,
              color: HexColor("#469E56"),
            ),
          ),
        );
      },
    );
  }
}
