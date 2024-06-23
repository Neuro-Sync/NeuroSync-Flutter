import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../preparing/widgets/child_component.dart';
import '../../../chat_cubit/chat_cubit.dart';

class ChatControllerArrowUp extends StatelessWidget {
  const ChatControllerArrowUp({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      ChatCubit.get(context).chatControllerArrowUpBtnNeighbors;
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
                              const ChatControllerArrowUp())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: chatCubit.chatControllerArrowUpBtnNeighbors["bottom"],
            left: chatCubit.chatControllerArrowUpBtnNeighbors["left"],
            right: chatCubit.chatControllerArrowUpBtnNeighbors["right"],
            top: chatCubit.chatControllerArrowUpBtnNeighbors["top"],
            childContent: InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                AppAssets.arrow_up_ic,
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
