import 'dart:developer';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neurosync/features/home/screens/chat/widgets/chat_controller/chat_controller_item/arrow_up.dart';
import 'package:neurosync/features/home/screens/chat/widgets/chat_controller/chat_controller_middle_section/video_call_btn.dart';
import 'package:neurosync/features/home/screens/chat/widgets/chat_controller/chat_controller_middle_section/voice_call_btn.dart';
import 'package:neurosync/features/home/screens/chat/widgets/controlled_chat_components/first_message.dart';
import 'package:neurosync/features/home/screens/chat/widgets/controlled_chat_components/second_message.dart';
import '../widgets/chat_controller/chat_controller_item/arrow_down.dart';
import '../widgets/chat_controller/chat_controller_item/play_btn.dart';
import '../widgets/chat_controller/chat_controller_lower_section/chat_back_btn.dart';
import '../widgets/chat_controller/chat_controller_lower_section/record_voice_btn.dart';
import '../widgets/chat_controller/chat_controller_lower_section/send_location_btn.dart';
import 'package:audioplayers/audioplayers.dart' as ap;

import '../widgets/controlled_chat_components/fourth_message.dart';
import '../widgets/controlled_chat_components/third_message.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatState());

  static ChatCubit get(context) => BlocProvider.of(context);

//  actions in Main Components BCI

  void actionsInMainComponentsBCI(context) {
    switch (selectedMainUiComponent) {
      case ChatSecondMessage():
        playFirstAudioMessage(context);
        break;
      case ChatFourthMessage():
        playSecondAudioMessage(context);
        break;

      default:
        print("Unknown component widget: $selectedMainUiComponent");
    }
  }

  void playFirstAudioMessage(context) async {
    await audioPlayer_1.play(AssetSource("audio/audio_sample.mp3"));
  }

  void playSecondAudioMessage(context) async {
    await audioPlayer_2.play(AssetSource("audio/audio_sample.mp3"));
  }

//  actions in Main Components BCI

  final audioPlayer_1 = ap.AudioPlayer();
  final audioPlayer_2 = ap.AudioPlayer();

  Future<void> pauseFirstMsg() => audioPlayer_1.pause();
  Future<void> stopFirstMsg() => audioPlayer_1.stop();

  Future<void> playSecondMsgAudio() async {
    await audioPlayer_2.play(AssetSource("audio/audio_sample.mp3"));
  }

  Future<void> pauseSecondMsg() => audioPlayer_2.pause();
  Future<void> stopSecondMsg() => audioPlayer_2.stop();

// ===========  Entertainment Main Components BCI =====

  //  Initial Values -  Before the first navigation
  dynamic selectedMainUiComponent = const ChatFirstMessage();

  Map<String, dynamic> firstMsgNeighbors = {
    "bottom": const ChatSecondMessage(),
    "top": const ChatFourthMessage(),
  };

  Map<String, dynamic> secondMsgNeighbors = {
    "bottom": const ChatThirdMessage(),
    "top": const ChatFirstMessage(),
  };

  Map<String, dynamic> thirdMsgNeighbors = {
    "bottom": const ChatFourthMessage(),
    "top": const ChatSecondMessage(),
  };

  Map<String, dynamic> fourthMsgNeighbors = {
    "bottom": const ChatFirstMessage(),
    "top": const ChatThirdMessage(),
  };

// ===========  Entertainment Main Components BCI =====

// ===========  chat Controller BCI =====

  Map<String, dynamic> backBtnNeighbors = {
    "bottom": const SizedBox.shrink(),
    "left": const SizedBox.shrink(),
    "right": const SizedBox.shrink(),
    "top": const SendLocationBtn(),
  };
  Map<String, dynamic> sendLocationBtnNeighbors = {
    "bottom": const ChatBackBtn(),
    "left": const SizedBox.shrink(),
    "right": const SizedBox.shrink(),
    "top": const RecordVoiceBtn(),
  };
  Map<String, dynamic> recordVoiceBtnNeighbors = {
    "bottom": const SendLocationBtn(),
    "left": const SizedBox.shrink(),
    "right": const SizedBox.shrink(),
    "top": const ChatControllerArrowDown(),
  };

  Map<String, dynamic> chatControllerArrowDownBtnNeighbors = {
    "bottom": const RecordVoiceBtn(),
    "left": const SizedBox.shrink(),
    "right": const SizedBox.shrink(),
    "top": const ChatPlayBtn(),
  };

  Map<String, dynamic> chatControllerArrowUpBtnNeighbors = {
    "bottom": const ChatControllerArrowDown(),
    "left": const SizedBox.shrink(),
    "right": const SizedBox.shrink(),
    "top": const VideoCallBtn(),
  };

  Map<String, dynamic> videoCallBtnNeighbors = {
    "bottom": const ChatControllerArrowUp(),
    //that correct
    // "left": const VoiceCallBtn(),
    //  "right": const SizedBox.shrink(),
    // "top": const SizedBox.shrink(),

    "top": const VoiceCallBtn(),
  };

  Map<String, dynamic> voiceCallBtnNeighbors = {
    "bottom": const ChatControllerArrowUp(),
    // "left": const SizedBox.shrink(),
    // "right": const VideoCallBtn(),
    // "top": const SizedBox.shrink(),
    "top": const VideoCallBtn()
  };
  Map<String, dynamic> playBtnNeighbors = {
    "bottom": const ChatControllerArrowDown(),
    "left": const SizedBox.shrink(),
    "right": const SizedBox.shrink(),
    "top": const ChatControllerArrowUp(),
  };
  // ===========  Chat Controller BCI =====

  // ===========  Chat Utils Methods =====

  bool compareWidgets(Widget widget1, Widget widget2) {
    if (widget1.runtimeType != widget2.runtimeType) {
      return false;
    } else {
      return true;
    }
  }

  dynamic componentWidget = const ChatBackBtn();
  void changeCurrentChatControllerComponent(context,
      {dynamic selectedControllercomponent, int? action}) {
    componentWidget = selectedControllercomponent;
    // if (action == 1) {
    navigation(context);
    // }
    emit(state.copyWith(
        changeCurrentChatControllerComponent:
            ChangeCurrentChatControllerComponent.success));
  }

  void navigation(
    context,
  ) {
    switch (componentWidget) {
      case ChatControllerArrowDown():
        log("It is Arrow Down =====================");
        selectedMainUiComponent =
            selectedMainUiComponent.neighbors(context)["bottom"];

        audioPlayer_1.stop();
        audioPlayer_2.stop();
        break;
      case ChatControllerArrowUp():
        selectedMainUiComponent =
            selectedMainUiComponent.neighbors(context)["top"];
        audioPlayer_1.stop();
        audioPlayer_2.stop();
        break;

      case ChatPlayBtn():
        actionsInMainComponentsBCI(context);
        break;
      default:
        print("Unknown component widget: $componentWidget");
    }
    emit(state.copyWith(
        changeChatNavigationState: ChangeChatNavigationState.success));
  }
  // ===========  Chat Utils Methods =====
}
