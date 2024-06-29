import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/features/home/screens/chat/widgets/widgets/chat_item.dart';
import '../../../../../../core/components/app_text.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../preparing/widgets/child_component.dart';
import '../../chat_cubit/chat_cubit.dart';

class ChatThirdMessage extends StatelessWidget {
  const ChatThirdMessage({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      ChatCubit.get(context).thirdMsgNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (BuildContext context, ChatState state) {
        ChatCubit chatCubit = ChatCubit.get(context);

        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: chatCubit.selectedMainUiComponent != null
                      ? chatCubit.compareWidgets(
                              chatCubit.selectedMainUiComponent,
                              const ChatThirdMessage())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: chatCubit.thirdMsgNeighbors["bottom"],
            top: chatCubit.thirdMsgNeighbors["top"],
            childContent: const ChatItem(
                index: 3, content: AppText("Do you want to travel today?")),
          ),
        );
      },
    );
  }
}
