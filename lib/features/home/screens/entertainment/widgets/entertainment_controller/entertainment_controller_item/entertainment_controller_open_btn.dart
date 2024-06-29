import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_styles.dart';
import '../../../../../../preparing/widgets/child_component.dart';
import '../../../cubit/entertainment_cubit.dart';

class EntertainmentControllerOpenButton extends StatelessWidget {
  const EntertainmentControllerOpenButton({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      EntertainmentCubit.get(context).openBtnNeighbors;
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
                              const EntertainmentControllerOpenButton())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: entertainmentCubit.openBtnNeighbors["bottom"],
            left: entertainmentCubit.openBtnNeighbors["left"],
            right: entertainmentCubit.openBtnNeighbors["right"],
            top: entertainmentCubit.openBtnNeighbors["top"],
            childContent: InkWell(
              onTap: () {},
              child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.chattopbarColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30.sp),
                    child: Center(
                        child: Text("Open",
                            style: TextStyles.font20PrimaryColorSemiBold
                                .copyWith(fontSize: 16.sp))),
                  )),
            ),
          ),
        );
      },
    );
  }
}
