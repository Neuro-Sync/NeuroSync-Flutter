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

class WheelchairArrowUp extends StatelessWidget {
  const WheelchairArrowUp({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      WheelcairCubit.get(context).wheelchairControllerArrowUpBtnNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WheelcairCubit, WheelcairState>(
        builder: (buildContext, wheelcairState) {
      WheelcairCubit weelcairCubit = WheelcairCubit.get(context);
      return Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: weelcairCubit.componentWidget != null
                    ? weelcairCubit.compareWidgets(
                            weelcairCubit.componentWidget,
                            const WheelchairArrowUp())
                        ? Colors.amber
                        : AppColors.primarycolor
                    : AppColors.primarycolor,
                width: 2.sp)),
        child: ChildBuildBlock(
          top: weelcairCubit.wheelchairControllerArrowUpBtnNeighbors["top"],
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
    });
  }
}
