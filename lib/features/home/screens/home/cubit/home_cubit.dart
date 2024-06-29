import 'dart:developer';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:audioplayers/audioplayers.dart' as ap;
import 'package:neurosync/core/utils/nav_utils.dart';
import 'package:neurosync/features/home/screens/chat/screens/chat_screen.dart';
import 'package:neurosync/features/home/screens/edit_profile/screens/edit_profile_screen.dart';
import 'package:neurosync/features/home/screens/entertainment/screens/entertainment_screen.dart';
import 'package:neurosync/features/home/screens/home/widgets/home_controller/controlled_home_controller_middle_section/chat_item.dart';
import 'package:neurosync/features/home/screens/home/widgets/home_controller/controlled_home_controller_middle_section/contacts_item.dart';
import 'package:neurosync/features/home/screens/map/screens/map_screen.dart';
import 'package:neurosync/features/home/screens/wheelchair/screens/wheelchair_screen.dart';
import '../widgets/home_controller/controlled_home_controller_middle_section/entertainment_item.dart';
import '../widgets/home_controller/controlled_home_controller_middle_section/map_item.dart';
import '../widgets/home_controller/controlled_home_controller_middle_section/profile_item.dart';
import '../widgets/home_controller/controlled_home_controller_middle_section/wheelchair_item.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());

  static HomeCubit get(context) => BlocProvider.of(context);

// ===========  Home Controller BCI =====

  Map<String, dynamic> profileBtnNeighbors = {
    "top": const EntertainmentItem(),
  };
  Map<String, dynamic> entertainmentBtnBtnNeighbors = {
    "top": const MapItem(),
  };
  Map<String, dynamic> mapBtnBtnNeighbors = {
    "top": const ChatItem(),
  };

  Map<String, dynamic> chatBtnNeighbors = {
    "top": const WheelchairItem(),
  };

  Map<String, dynamic> contactsBtnNeighbors = {
    "top": const ProfileItem(),
  };
  Map<String, dynamic> wheelchairBtnNeighbors = {
    "top": const ContactsItem(),
  };
  // ===========  Home Controller BCI =====

  // ===========  Home Utils Methods =====

  bool compareWidgets(Widget widget1, Widget widget2) {
    if (widget1.runtimeType != widget2.runtimeType) {
      return false;
    } else {
      return true;
    }
  }

  dynamic componentWidget = const ProfileItem();
  void changeCurrentHomeControllerComponent(context,
      {dynamic selectedControllercomponent, int? action}) {
    componentWidget = selectedControllercomponent;
    if (action == 1) {
      navigation(context);
    }
    emit(state.copyWith(
        changeCurrentHomeStateControllerComponent:
            ChangeCurrentHomeStateControllerComponent.success));
  }

  void navigation(
    context,
  ) {
    switch (componentWidget) {
      case EntertainmentItem():
        pushScreen(context, EnterTainMentScreen());
        break;
      case MapItem():
        pushScreen(context, MapScreen());

        break;
      case ChatItem():
        pushScreen(context, ChatScreen());

        break;
      case WheelchairItem():
        pushScreen(context, WheelChairScreen());

        break;
      case ProfileItem():
        pushScreen(context, EditProfileScreen());

        break;
      default:
        print("Unknown component widget: $componentWidget");
    }
    // changeCurrentHomeControllerComponent(context,
    //     selectedControllercomponent: null, action: 0);
    emit(state.copyWith(
        changeHomeStateNavigationState:
            ChangeHomeStateNavigationState.success));
  }

  // ===========  Home Utils Methods =====
}
