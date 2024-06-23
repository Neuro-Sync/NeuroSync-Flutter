import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neurosync/core/theming/app_colors.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../preparing/widgets/child_component.dart';
import '../../../chat_cubit/chat_cubit.dart';

class ChatControllerArrowDown extends StatelessWidget {
  const ChatControllerArrowDown({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      ChatCubit.get(context).chatControllerArrowDownBtnNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        ChatCubit chatCubit = ChatCubit.get(context);
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: chatCubit.componentWidget != null
                      ? chatCubit.compareWidgets(chatCubit.componentWidget,
                              const ChatControllerArrowDown())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: chatCubit.chatControllerArrowDownBtnNeighbors["bottom"],
            left: chatCubit.chatControllerArrowDownBtnNeighbors["left"],
            right: chatCubit.chatControllerArrowDownBtnNeighbors["right"],
            top: chatCubit.chatControllerArrowDownBtnNeighbors["top"],
            childContent: InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                AppAssets.arrow_down_ic,
                color: AppColors.blueColor,
                width: 40.w,
                height: 40.h,
              ),
            ),
          ),
        );
      },
    );
  }
}
