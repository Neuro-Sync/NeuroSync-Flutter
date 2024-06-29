import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/features/home/screens/map/cubit/map_cubit.dart';
import 'package:neurosync/features/preparing/widgets/child_component.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_styles.dart';

class MapClinicBtn extends StatelessWidget {
  const MapClinicBtn({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      MapCubit.get(context).mapClinicBtnNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        MapCubit mapCubit = MapCubit.get(context);
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: mapCubit.componentWidget != null
                      ? mapCubit.compareWidgets(
                              mapCubit.componentWidget, const MapClinicBtn())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            top: mapCubit.mapClinicBtnNeighbors["top"],
            childContent: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    Size(158.w, 51.h),
                  ),
                  maximumSize: MaterialStateProperty.all(
                    Size(158.w, 51.h),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          164.0.r), // Replace 10.0 with your desired radius
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      AppColors.chattopbarColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      AppAssets.clinic_icon_IC,
                      height: 22.h,
                      width: 22.w,
                    ),
                    Text(
                      "Clinic",
                      style: TextStyles.font20PrimaryColorSemiBold
                          .copyWith(fontSize: 15.sp),
                    ),
                  ],
                )),
          ),
        );
      },
    );
  }
}
