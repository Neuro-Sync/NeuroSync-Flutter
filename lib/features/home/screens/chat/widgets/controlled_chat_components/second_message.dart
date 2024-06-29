import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/features/home/screens/chat/widgets/controlled_chat_components/audio_widgets/audio.dart';
import 'package:neurosync/features/home/screens/chat/widgets/widgets/chat_item.dart';
import 'package:neurosync/features/preparing/widgets/child_component.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../chat_cubit/chat_cubit.dart';

class ChatSecondMessage extends StatelessWidget {
  const ChatSecondMessage({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      ChatCubit.get(context).secondMsgNeighbors;
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
                              const ChatSecondMessage())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: chatCubit.secondMsgNeighbors["bottom"],
            top: chatCubit.secondMsgNeighbors["top"],
            childContent: ChatItem(
                index: 2,
                content: AudioPlayer(
                    audioPlayer: ChatCubit.get(context).audioPlayer_1)),
          ),
        );
      },
    );
  }
}
