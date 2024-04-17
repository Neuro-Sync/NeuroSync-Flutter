// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/app_cubit/app_cubit.dart';
import '../../../../../../../core/components/app_text.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_font_family.dart';
import '../../../../../widgets/child_component.dart';

class TitleTextComponent extends StatelessWidget {
  const TitleTextComponent({
    super.key,
  });


Map<String, dynamic> neighbors(BuildContext context) => 
    AppCubit.get(context).titleNeighbors; 

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
                              appCubit.componentWidget, const TitleTextComponent())
                          ? Colors.blue
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
              bottom: appCubit.titleNeighbors["bottom"],
              left: appCubit.titleNeighbors["left"],
              right: appCubit.titleNeighbors["right"],
              top: appCubit.titleNeighbors["top"],
              childContent: AppText(
                "Content",
                color: Colors.white,
                fontSize: 40.sp,
                fontFamily: FontConstants.lorasemiBoldFont,
              )),
        );
      },
    );
  }
}
