import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../preparing/widgets/child_component.dart';
import '../../../cubit/entertainment_cubit.dart';

class EntertainmentControllerArrowRight extends StatelessWidget {
  const EntertainmentControllerArrowRight({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      EntertainmentCubit.get(context)
          .entertainmentControllerArrowRightBtnNeighbors;
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
                              const EntertainmentControllerArrowRight())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: entertainmentCubit
                .entertainmentControllerArrowRightBtnNeighbors["bottom"],
            left: entertainmentCubit
                .entertainmentControllerArrowRightBtnNeighbors["left"],
            right: entertainmentCubit
                .entertainmentControllerArrowRightBtnNeighbors["right"],
            top: entertainmentCubit
                .entertainmentControllerArrowRightBtnNeighbors["top"],
            childContent: InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                AppAssets.arrow_right_ic,
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
