import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/features/home/screens/chat/widgets/controlled_chat_components/audio_widgets/audio.dart';
import 'package:neurosync/features/home/screens/chat/widgets/widgets/chat_item.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../preparing/widgets/child_component.dart';
import '../../chat_cubit/chat_cubit.dart';

class ChatFourthMessage extends StatelessWidget {
  const ChatFourthMessage({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      ChatCubit.get(context).fourthMsgNeighbors;
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
                              const ChatFourthMessage())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: Padding(
            padding: EdgeInsets.all(5.sp),
            child: ChildBuildBlock(
              bottom: chatCubit.fourthMsgNeighbors["bottom"],
              top: chatCubit.fourthMsgNeighbors["top"],
              childContent: ChatItem(
                  index: 4,
                  content: AudioPlayer(
                      audioPlayer: ChatCubit.get(context).audioPlayer_2)),
            ),
          ),
        );
      },
    );
  }
}
