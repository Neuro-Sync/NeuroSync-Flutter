// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/app_cubit/app_cubit.dart';
import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../widgets/child_component.dart';
import '../../entertainment_item.dart';

class ImagesFilesComponent extends StatelessWidget {
  ImagesFilesComponent({
    super.key,
  });

Map<String, dynamic> neighbors(BuildContext context) => 
    AppCubit.get(context).imagesNeighbors; 


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
                              appCubit.componentWidget, ImagesFilesComponent())
                          ? Colors.blue
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: appCubit.imagesNeighbors["bottom"],
            left: appCubit.imagesNeighbors["left"],
            right: appCubit.imagesNeighbors["right"],
            top: appCubit.imagesNeighbors["top"],
            childContent: EntertainmentItem(
              //7F1280
              colors: [
                HexColor("#C74646"),
                Colors.red,
              ],
              imagePath: AppAssets.raw_images_IC,
              color: Colors.red,
            ),
          ),
        );
      },
    );
  }
}
