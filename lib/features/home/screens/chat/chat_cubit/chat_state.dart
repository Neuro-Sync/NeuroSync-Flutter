// ignore_for_file: override_on_non_overriding_member

part of 'chat_cubit.dart';

enum ChangeChatNavigationState {
  initial,
  success,
}

enum ChangeCurrentChatControllerComponent {
  initial,
  success,
}

class ChatState {
  final ChangeChatNavigationState changeChatNavigationState;
  final ChangeCurrentChatControllerComponent
      changeCurrentChatControllerComponent;
  bool? isClicked;

  ChatState({
    this.changeChatNavigationState = ChangeChatNavigationState.initial,
    this.changeCurrentChatControllerComponent =
        ChangeCurrentChatControllerComponent.initial,
    this.isClicked,
  });

  ChatState copyWith({
    ChangeChatNavigationState? changeChatNavigationState,
    ChangeCurrentChatControllerComponent? changeCurrentChatControllerComponent,
    bool? isClicked,
    int? stepsCountIncontrller = -1,
  }) {
    return ChatState(
      changeChatNavigationState:
          changeChatNavigationState ?? this.changeChatNavigationState,
      changeCurrentChatControllerComponent:
          changeCurrentChatControllerComponent ??
              this.changeCurrentChatControllerComponent,
      isClicked: isClicked ?? this.isClicked ?? false,
    );
  }
}
