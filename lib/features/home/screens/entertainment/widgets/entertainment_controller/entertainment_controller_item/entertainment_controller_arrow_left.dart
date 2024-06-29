import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neurosync/features/home/screens/entertainment/cubit/entertainment_cubit.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../preparing/widgets/child_component.dart';

class EntertainmentControllerArrowLeft extends StatelessWidget {
  const EntertainmentControllerArrowLeft({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      EntertainmentCubit.get(context)
          .entertainmentControllerArrowLeftBtnNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EntertainmentCubit, EntertainmentState>(
      builder: (context, state) {
        EntertainmentCubit entertainmentCubit = EntertainmentCubit.get(context);
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: entertainmentCubit.selectedControllercomponent != null
                      ? entertainmentCubit.compareWidgets(
                              entertainmentCubit.selectedControllercomponent,
                              const EntertainmentControllerArrowLeft())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: entertainmentCubit
                .entertainmentControllerArrowLeftBtnNeighbors["bottom"],
            left: entertainmentCubit
                .entertainmentControllerArrowLeftBtnNeighbors["left"],
            right: entertainmentCubit
                .entertainmentControllerArrowLeftBtnNeighbors["right"],
            top: entertainmentCubit
                .entertainmentControllerArrowLeftBtnNeighbors["top"],
            childContent: InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                AppAssets.arrow_left_ic,
                width: 30.w,
                height: 30.h,
              ),
            ),
          ),
        );
      },
    );
  }
}
