import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/features/home/screens/entertainment/widgets/controlled_entertainment_content/entertainment_item.dart';

import '../../../../../../core/resources/app_assets.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/utils/nav_utils.dart';
import '../../../../../preparing/widgets/child_component.dart';
import '../../cubit/entertainment_cubit.dart';
import '../../screens/image_screen/screens/image_entertainment_screen.dart';

class EntertainmentMediaItemImage extends StatelessWidget {
  const EntertainmentMediaItemImage({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      EntertainmentCubit.get(context).imagesNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EntertainmentCubit, EntertainmentState>(
      builder: (context, state) {
        EntertainmentCubit entertainmentCubit = EntertainmentCubit.get(context);
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: entertainmentCubit.selectedMainUiComponent != null
                      ? entertainmentCubit.compareWidgets(
                              entertainmentCubit.selectedMainUiComponent,
                              const EntertainmentMediaItemImage())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: entertainmentCubit
                .entertainmentControllerArrowDownBtnNeighbors["bottom"],
            left: entertainmentCubit
                .entertainmentControllerArrowDownBtnNeighbors["left"],
            right: entertainmentCubit
                .entertainmentControllerArrowDownBtnNeighbors["right"],
            top: entertainmentCubit
                .entertainmentControllerArrowDownBtnNeighbors["top"],
            childContent: EntertainmentMediaItem(
                onTap: () {
                  pushScreen(context, const ImageEntertainmentScreen());
                },
                path: AppAssets.images_IC,
                title: "Images",
                bgColor: AppColors.bluecolorEntertainment.withOpacity(0.1)),
          ),
        );
      },
    );
  }
}
