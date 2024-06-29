import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_styles.dart';
import '../../../../../../preparing/widgets/child_component.dart';
import '../../../../chat/chat_cubit/chat_cubit.dart';
import '../../../cubit/wheelchair_cubit.dart';

class WheelchairStopBtn extends StatelessWidget {
  const WheelchairStopBtn({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      WheelcairCubit.get(context).wheelchairStopBtnNeighbors;
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
                            const WheelchairStopBtn())
                        ? Colors.amber
                        : AppColors.primarycolor
                    : AppColors.primarycolor,
                width: 2.sp)),
        child: ChildBuildBlock(
            top: wheelcairCubit.wheelchairStopBtnNeighbors["top"],
            childContent: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.chattopbarColor,
                ),
                child: Padding(
                  padding: EdgeInsets.all(30.sp),
                  child: Center(
                      child: Text("Stop",
                          style: TextStyles.font20PrimaryColorSemiBold
                              .copyWith(fontSize: 16.sp))),
                ))),
      );
    });
  }
}
