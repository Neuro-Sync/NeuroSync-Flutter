// ignore_for_file: must_be_immutable



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/core/app_cubit/app_cubit.dart';
import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../widgets/child_component.dart';
import '../../entertainment_item.dart';

class PdfFilesComponent extends StatelessWidget {
  const PdfFilesComponent({
    super.key,
  });

  Map<String, dynamic> neighbors(BuildContext context) =>
      AppCubit.get(context).pdfNeighbors;
  @override
 
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        AppCubit appCubit = AppCubit.get(context);

        return ChildBuildBlock(
          bottom: appCubit.pdfNeighbors["bottom"],
          left: appCubit.pdfNeighbors["left"],
          right: appCubit.pdfNeighbors["right"],
          top: appCubit.pdfNeighbors["top"],
          childContent: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: appCubit.componentWidget != null
                        ? appCubit.compareWidgets(
                                appCubit.componentWidget, PdfFilesComponent())
                            ? Colors.blue
                            : AppColors.primarycolor
                        : AppColors.primarycolor,
                    width: 2.sp)),
            child: Padding(
              padding: EdgeInsets.all(5.sp),
              child: EntertainmentItem(
                colors: [
                  HexColor("#FF8E25"),
                  HexColor("#81430A"),
                ],
                imagePath: AppAssets.pdf_IC,
                color: HexColor("#FF8E25"),
              ),
            ),
          ),
        );
      },
    );
  }
}
