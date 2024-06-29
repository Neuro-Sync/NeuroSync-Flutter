import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neurosync/features/home/screens/wheelchair/cubit/wheelchair_cubit.dart';
import 'package:neurosync/features/home/screens/wheelchair/cubit/wheelchair_cubit.dart';
import 'package:neurosync/features/home/screens/wheelchair/cubit/wheelchair_cubit.dart';
import 'package:neurosync/features/preparing/widgets/child_component.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../cubit/wheelchair_cubit.dart';

class WheelchairArrowLeft extends StatelessWidget {
  const WheelchairArrowLeft({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      WheelcairCubit.get(context).wheelchairControllerArrowLeftBtnNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WheelcairCubit, WheelcairState>(
        builder: (buildContext, wheelcairState) {
      WheelcairCubit wheelcairCubit = WheelcairCubit.get(context);
      return Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: wheelcairCubit.componentWidget != null
                    ? wheelcairCubit.compareWidgets(
                            wheelcairCubit.componentWidget,
                            const WheelchairArrowLeft())
                        ? Colors.amber
                        : AppColors.primarycolor
                    : AppColors.primarycolor,
                width: 2.sp)),
        child: ChildBuildBlock(
          top: wheelcairCubit.wheelchairControllerArrowLeftBtnNeighbors["top"],
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
    });
  }
}
