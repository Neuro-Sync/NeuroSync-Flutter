import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../preparing/widgets/child_component.dart';
import '../../../cubit/entertainment_cubit.dart';

class EntertainmentControllerArrowUp extends StatelessWidget {
  const EntertainmentControllerArrowUp({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      EntertainmentCubit.get(context)
          .entertainmentControllerArrowUpBtnNeighbors;
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
                              const EntertainmentControllerArrowUp())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: entertainmentCubit
                .entertainmentControllerArrowUpBtnNeighbors["bottom"],
            left: entertainmentCubit
                .entertainmentControllerArrowUpBtnNeighbors["left"],
            right: entertainmentCubit
                .entertainmentControllerArrowUpBtnNeighbors["right"],
            top: entertainmentCubit
                .entertainmentControllerArrowUpBtnNeighbors["top"],
            childContent: InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                AppAssets.arrow_up_ic,
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
