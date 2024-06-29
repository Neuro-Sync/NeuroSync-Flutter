import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/features/home/screens/chat/chat_cubit/chat_cubit.dart';
import 'package:neurosync/features/home/screens/chat/widgets/widgets/chat_item.dart';

import '../../../../../../core/components/app_text.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../preparing/widgets/child_component.dart';

class ChatFirstMessage extends StatelessWidget {
  const ChatFirstMessage({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      ChatCubit.get(context).firstMsgNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        ChatCubit chatCubit = ChatCubit.get(context);
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: chatCubit.selectedMainUiComponent != null
                      ? chatCubit.compareWidgets(
                              chatCubit.selectedMainUiComponent,
                              const ChatFirstMessage())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: chatCubit.firstMsgNeighbors["bottom"],
            top: chatCubit.firstMsgNeighbors["top"],
            childContent: const ChatItem(
                index: 1,
                content: AppText("Did you take your medicine today?")),
          ),
        );
      },
    );
  }
}
