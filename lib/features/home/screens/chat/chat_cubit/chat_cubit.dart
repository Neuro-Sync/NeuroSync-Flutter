import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neurosync/features/home/screens/chat/widgets/chat_controller/chat_controller_item/arrow_up.dart';
import 'package:neurosync/features/home/screens/chat/widgets/chat_controller/chat_controller_middle_section/video_call_btn.dart';
import 'package:neurosync/features/home/screens/chat/widgets/chat_controller/chat_controller_middle_section/voice_call_btn.dart';
import '../widgets/chat_controller/chat_controller_item/arrow_down.dart';
import '../widgets/chat_controller/chat_controller_item/play_btn.dart';
import '../widgets/chat_controller/chat_controller_lower_section/back_btn.dart';
import '../widgets/chat_controller/chat_controller_lower_section/record_voice_btn.dart';
import '../widgets/chat_controller/chat_controller_lower_section/send_location_btn.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatState());

  static ChatCubit get(context) => BlocProvider.of(context);

// ===========  chat Screen =====

  Map<String, dynamic> backBtnNeighbors = {
    "bottom": const SizedBox.shrink(),
    "left": const SizedBox.shrink(),
    "right": const SizedBox.shrink(),
    "top": const SendLocationBtn(),
  };
  Map<String, dynamic> sendLocationBtnNeighbors = {
    "bottom": const BackBtn(),
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
    "top": const PlayBtn(),
  };

  Map<String, dynamic> chatControllerArrowUpBtnNeighbors = {
    "bottom": const ChatControllerArrowDown(),
    "left": const SizedBox.shrink(),
    "right": const SizedBox.shrink(),
    "top": const VideoCallBtn(),
  };

  Map<String, dynamic> VideoCallBtnNeighbors = {
    "bottom": const ChatControllerArrowUp(),
    //that correct
    // "left": const VoiceCallBtn(),
    //  "right": const SizedBox.shrink(),
    // "top": const SizedBox.shrink(),

    "top": const VoiceCallBtn(),
  };

  Map<String, dynamic> VoiceCallBtnNeighbors = {
    "bottom": const ChatControllerArrowUp(),
    // "left": const SizedBox.shrink(),
    // "right": const VideoCallBtn(),
    // "top": const SizedBox.shrink(),
    "top": VideoCallBtn()
  };
  Map<String, dynamic> playBtnNeighbors = {
    "bottom": const ChatControllerArrowDown(),
    "left": const SizedBox.shrink(),
    "right": const SizedBox.shrink(),
    "top": const ChatControllerArrowUp(),
  };

  bool compareWidgets(Widget widget1, Widget widget2) {
    if (widget1.runtimeType != widget2.runtimeType) {
      emit(state.copyWith(stepsCountIncontrller: stepsCountIncontrller));

      return false;
    } else {
      emit(state.copyWith(stepsCountIncontrller: stepsCountIncontrller));

      return true;
    }
  }

  dynamic componentWidget;

  void changeControllerAccesss(bool? isClicked) {
    if (isClicked == true) {
      stepsCountIncontrller = 0;
      emit(state.copyWith(isClicked: isClicked));
    } else {
      stepsCountIncontrller = 1;

      emit(state.copyWith(isClicked: isClicked));
    }
  }

  int stepsCountIncontrller = -1;

  void changeCurrentstep({int? value}) {
    if (value == null) {
      log("%%%%");
      stepsCountIncontrller = stepsCountIncontrller + 1;
      emit(state.copyWith(changestate: Changestate.success));
    } else {
      log("#######");

      stepsCountIncontrller = value;
      emit(state.copyWith(changestate: Changestate.success));
    }
  }

  void change({dynamic componentWidget}) {
    log("inside");
    this.componentWidget = componentWidget;
    emit(state.copyWith(changestate: Changestate.success));
  }

  int currentIndex = 0;
  void changeCurrentregisterScreen(currentScreen) {
    currentIndex = currentScreen;
    emit(state.copyWith(
        changeCurrentRegisterScreen: ChangeCurrentRegisterScreen.success));
  }

  void navigation(context, dynamic current, dynamic direction) {
    log("${current.neighbors}neighbors");
    if (direction == current.neighbors(context)["left"]) {
      componentWidget = current.neighbors(context)["left"];
    } else if (direction == current.neighbors(context)["top"]) {
      componentWidget = current.neighbors(context)["top"];
    } else if (direction == current.neighbors(context)["bottom"]) {
      componentWidget = current.neighbors(context)["bottom"];
    } else if (direction == current.neighbors(context)["right"]) {
      componentWidget = current.neighbors(context)["right"];
    }

    emit(state.copyWith(changeCurrentChild: ChangeCurrentChild.success));
  }
}
