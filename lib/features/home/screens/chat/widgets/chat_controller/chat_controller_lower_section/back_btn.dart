import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/features/home/screens/chat/chat_cubit/chat_cubit.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../preparing/widgets/child_component.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      ChatCubit.get(context).backBtnNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        ChatCubit chatCubit = ChatCubit.get(context);
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: chatCubit.componentWidget != null
                      ? chatCubit.compareWidgets(
                              chatCubit.componentWidget, const BackBtn())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: chatCubit.backBtnNeighbors["bottom"],
            left: chatCubit.backBtnNeighbors["left"],
            right: chatCubit.backBtnNeighbors["right"],
            top: chatCubit.backBtnNeighbors["top"],
            childContent: OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(301.w, 56.h),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    side: BorderSide(
                      color: AppColors.blueColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(164.0.r),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.chattopbarColor),
              ),
              child: Image.asset(
                AppAssets.undo_down_IC,
                width: 80.w,
                height: 56.h,
                color: AppColors.mainScreensTitlesBlueColor,
              ),
            ),
          ),
        );
      },
    );
  }
}
