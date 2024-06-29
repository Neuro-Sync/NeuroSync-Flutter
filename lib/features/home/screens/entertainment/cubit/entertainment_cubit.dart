import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neurosync/core/utils/nav_utils.dart';

import '../../chat/widgets/chat_controller/chat_controller_item/arrow_up.dart';
import '../screens/audio_screen/screens/audio_entertainment_screen.dart';
import '../screens/document_screen/screens/doc_entertainment_screen.dart';
import '../screens/folder_screen/screens/folder_entertainment_screen.dart';
import '../screens/image_screen/screens/image_entertainment_screen.dart';
import '../screens/video_screen/screens/videoes_entertainment_screen.dart';
import '../widgets/controlled_entertainment_content/media_audios_item.dart';
import '../widgets/controlled_entertainment_content/media_docs_item.dart';
import '../widgets/controlled_entertainment_content/media_folders_item.dart';
import '../widgets/controlled_entertainment_content/media_images_item.dart';
import '../widgets/controlled_entertainment_content/media_videoes_item.dart';
import '../widgets/entertainment_controller/entertainment_controller_item/entertainment_controller_arrow_bottom.dart';
import '../widgets/entertainment_controller/entertainment_controller_item/entertainment_controller_arrow_left.dart';
import '../widgets/entertainment_controller/entertainment_controller_item/entertainment_controller_arrow_right.dart';
import '../widgets/entertainment_controller/entertainment_controller_item/entertainment_controller_arrow_up.dart';
import '../widgets/entertainment_controller/entertainment_controller_item/entertainment_controller_open_btn.dart';
import '../widgets/entertainment_controller/entertainment_controller_lower_section/entertainment_back_btn.dart';
part 'entertainment_state.dart';

class EntertainmentCubit extends Cubit<EntertainmentState> {
  EntertainmentCubit() : super(EntertainmentState()) {}

  static EntertainmentCubit get(context) => BlocProvider.of(
        context,
      );

// ===========  Entertainment Main Components BCI =====

  //  Initial Values -  Before the first navigation
  dynamic selectedMainUiComponent = const EntertainmentMediaItemImage();

  Map<String, dynamic> imagesNeighbors = {
    "right": const EntertainmentMediaItemAudioes(),
    "bottom": const EntertainmentMediaItemDocs(),
    "left": const EntertainmentMediaItemFolders(),
    "top": const EntertainmentMediaItemFolders(),
  };

  Map<String, dynamic> audioNeighbors = {
    "right": const EntertainmentMediaItemVideoes(),
    "bottom": const EntertainmentMediaItemFolders(),
    "left": const EntertainmentMediaItemImage(),
    "top": const EntertainmentMediaItemFolders(),
  };

  Map<String, dynamic> videoNeighbors = {
    "right": const EntertainmentMediaItemDocs(),
    "bottom": const EntertainmentMediaItemDocs(),
    "left": const EntertainmentMediaItemAudioes(),
    "top": const EntertainmentMediaItemFolders(),
  };

  Map<String, dynamic> docsNeighbors = {
    "right": const EntertainmentMediaItemFolders(),
    "bottom": const EntertainmentMediaItemImage(),
    "left": const EntertainmentMediaItemVideoes(),
    "top": const EntertainmentMediaItemImage(),
  };
  Map<String, dynamic> foldersNeighbors = {
    "right": const EntertainmentMediaItemImage(),
    "bottom": const EntertainmentMediaItemImage(),
    "left": const EntertainmentMediaItemDocs(),
    "top": const EntertainmentMediaItemAudioes(),
  };

// ===========  Entertainment Main Components BCI =====

//  actions in Main Components BCI

  void actionsInMainComponentsBCI(context) {
    switch (selectedMainUiComponent) {
      case EntertainmentMediaItemAudioes():
        navigateToAudioEntertainmentScreen(context);
        break;
      case EntertainmentMediaItemVideoes():
        navigateToVideoEntertainmentScreen(context);
        break;
      case EntertainmentMediaItemDocs():
        navigateToDocumentEntertainmentScreen(context);
        break;
      case EntertainmentMediaItemFolders():
        navigateToFolderEntertainmentScreen(context);
        break;
      case EntertainmentMediaItemImage():
        navigateToImageEntertainmentScreen(context);
        break;
      default:
        print("Unknown component widget: $selectedControllercomponent");
    }
  }

  void navigateToAudioEntertainmentScreen(context) {
    pushScreen(context, const AudioEntertainmentScreen());
  }

  void navigateToVideoEntertainmentScreen(context) {
    pushScreen(context, const VideoEntertainmentScreen());
  }

  void navigateToDocumentEntertainmentScreen(context) {
    pushScreen(context, const DocumentEntertainmentScreen());
  }

  void navigateToFolderEntertainmentScreen(context) {
    pushScreen(context, const FolderEntertainmentScreen());
  }

  void navigateToImageEntertainmentScreen(context) {
    pushScreen(context, const ImageEntertainmentScreen());
  }

//  actions in Main Components BCI

// ===========  Entertainment Controller BCI =====

  Map<String, dynamic> backBtnNeighbors = {
    "bottom": const SizedBox.shrink(),
    "left": const SizedBox.shrink(),
    "right": const SizedBox.shrink(),
    "top": const EntertainmentControllerArrowBottom(),
  };

  Map<String, dynamic> entertainmentControllerArrowDownBtnNeighbors = {
    "bottom": const EntertainmentBackBtn(),
    "left": const EntertainmentControllerArrowLeft(),
    "right": const EntertainmentControllerArrowRight(),
    "top": const EntertainmentControllerArrowRight(),
    //const EntertainmentControllerOpenButton(),
  };

  Map<String, dynamic> entertainmentControllerArrowUpBtnNeighbors = {
    "bottom": const EntertainmentControllerOpenButton(),
    "left": const SizedBox.shrink(),
    "right": const SizedBox.shrink(),
    "top": const SizedBox.shrink(),
  };

  Map<String, dynamic> entertainmentControllerArrowLeftBtnNeighbors = {
    "bottom": const EntertainmentControllerArrowBottom(),
    "left": const SizedBox.shrink(),
    "right": const EntertainmentControllerOpenButton(),
    "top": const EntertainmentControllerArrowUp(),
  };

  Map<String, dynamic> entertainmentControllerArrowRightBtnNeighbors = {
    "bottom": const EntertainmentControllerArrowBottom(),
    "left": const EntertainmentControllerOpenButton(),
    "right": const SizedBox.shrink(),
    "top": const EntertainmentControllerOpenButton()
    //const EntertainmentControllerArrowUp(),
  };
  Map<String, dynamic> openBtnNeighbors = {
    "bottom": const EntertainmentControllerArrowBottom(),
    "left": const EntertainmentControllerArrowLeft(),
    "right": const EntertainmentControllerArrowRight(),
    "top": const EntertainmentControllerArrowLeft()
    //const ChatControllerArrowUp(),
  };
  // ===========  Entertainment Controller BCI =====

  // ===========  Entertainment Utils Methods =====

  bool compareWidgets(Widget widget1, Widget widget2) {
    if (widget1.runtimeType != widget2.runtimeType) {
      return false;
    } else {
      return true;
    }
  }

  //  Initial Values -  Before the first navigation
  dynamic selectedControllercomponent = const EntertainmentBackBtn();
  void changeCurrentControllerEntertainmentComponent(context,
      {dynamic selectedControllercomponent, int? action}) {
    this.selectedControllercomponent = selectedControllercomponent;
    if (action == 1) {
      navigation(context);
    }
    emit(state.copyWith(
        changeCurrentEntertainmentControllerComponent:
            ChangeCurrentEntertainmentControllerComponent.success));
  }

  void navigation(
    context,
  ) {
    switch (selectedControllercomponent) {
      case EntertainmentControllerArrowBottom():
        selectedMainUiComponent =
            selectedMainUiComponent.neighbors(context)["bottom"];
        break;
      case EntertainmentControllerArrowLeft():
        selectedMainUiComponent =
            selectedMainUiComponent.neighbors(context)["left"];
        break;
      case EntertainmentControllerArrowRight():
        selectedMainUiComponent =
            selectedMainUiComponent.neighbors(context)["right"];
        break;
      case EntertainmentControllerArrowUp():
        selectedMainUiComponent =
            selectedMainUiComponent.neighbors(context)["top"];
        break;
      case EntertainmentControllerOpenButton():
        actionsInMainComponentsBCI(context);
        break;
      default:
        print("Unknown component widget: $selectedControllercomponent");
    }
    emit(state.copyWith(
        changeEntertainmentNavigationState:
            ChangeEntertainmentNavigationState.success));
  }

  // ===========  Chat Utils Methods =====
}
