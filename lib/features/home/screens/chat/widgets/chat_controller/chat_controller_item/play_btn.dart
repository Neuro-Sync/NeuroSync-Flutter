import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_styles.dart';
import '../../../../../../preparing/widgets/child_component.dart';
import '../../../chat_cubit/chat_cubit.dart';

class PlayBtn extends StatelessWidget {
  const PlayBtn({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      ChatCubit.get(context).playBtnNeighbors;
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
                              chatCubit.componentWidget, const PlayBtn())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: chatCubit.playBtnNeighbors["bottom"],
            left: chatCubit.playBtnNeighbors["left"],
            right: chatCubit.playBtnNeighbors["right"],
            top: chatCubit.playBtnNeighbors["top"],
            childContent: Container(
                decoration: BoxDecoration(
                  color: AppColors.chattopbarColor,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(30.sp),
                  child: Center(
                      child: Text("Play",
                          style: TextStyles.font20PrimaryColorSemiBold
                              .copyWith(fontSize: 16.sp))),
                )),
          ),
        );
      },
    );
  }
}
