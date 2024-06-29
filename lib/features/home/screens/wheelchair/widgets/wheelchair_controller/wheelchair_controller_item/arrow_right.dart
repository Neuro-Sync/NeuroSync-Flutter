import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../preparing/widgets/child_component.dart';
import '../../../../chat/chat_cubit/chat_cubit.dart';
import '../../../cubit/wheelchair_cubit.dart';

class WheelchairArrowRight extends StatelessWidget {
  const WheelchairArrowRight({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      WheelcairCubit.get(context).wheelchairControllerArrowRightBtnNeighbors;
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
                            const WheelchairArrowRight())
                        ? Colors.amber
                        : AppColors.primarycolor
                    : AppColors.primarycolor,
                width: 2.sp)),
        child: ChildBuildBlock(
          top: wheelcairCubit.wheelchairControllerArrowRightBtnNeighbors["top"],
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
    });
  }
}
