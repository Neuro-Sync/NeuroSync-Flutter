import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:neurosync/features/preparing/screens/demo/widgets/entertainment_components/body/title_text_component.dart';

import '../../features/preparing/screens/demo/widgets/entertainment_components/appbar/headset_icon_component.dart';
import '../../features/preparing/screens/demo/widgets/entertainment_components/appbar/network_icon_component.dart';
import '../../features/preparing/screens/demo/widgets/entertainment_components/appbar/switch_component.dart';
import '../../features/preparing/screens/demo/widgets/entertainment_components/body/files_component.dart';
import '../../features/preparing/screens/demo/widgets/entertainment_components/body/images_component.dart';
import '../../features/preparing/screens/demo/widgets/entertainment_components/body/notification_icon_component.dart';
import '../../features/preparing/screens/demo/widgets/entertainment_components/body/pdf_files_component.dart';
import '../../features/preparing/screens/demo/widgets/entertainment_components/body/record_component.dart';
import '../../features/preparing/screens/demo/widgets/entertainment_components/body/videos_component.dart';

part 'app_states.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState());

  static AppCubit get(context) => BlocProvider.of(context);

/////======/////////////
// ===========  Entertainment Screen ===== /////
  ///appbar//////
  Map<String, dynamic> headsetIconNeighbors = {
    "bottom": NotificationIconItem(),
    "left": Networkiconcomponent(),
    "right": const SizedBox.shrink(),
    "top": const SizedBox.shrink(),
  };
  Map<String, dynamic> networkIconNeighbors = {
    "bottom": NotificationIconItem(),
    "left": const SwitchComponent(),
    "right": HeadsetIconComponent(),
    "top": const SizedBox.shrink(),
  };
  Map<String, dynamic> switchIconNeighbors = {
    "bottom": NotificationIconItem(),
    "left": const SizedBox.shrink(),
    "right": Networkiconcomponent(),
    "top": const SizedBox.shrink(),
  };

  ///body//////

  Map<String, dynamic> filesNeighbors = {
    "bottom": ImagesFilesComponent(),
    "left": const PdfFilesComponent(),
    "right": const SizedBox.shrink(),
    "top": NotificationIconItem(),
  };

  Map<String, dynamic> videosNeighbors = {
    "bottom": const RecordComponent(),
    "left": const SizedBox.shrink(),
    "right": const SizedBox.shrink(),
    "top": ImagesFilesComponent(),
  };

  Map<String, dynamic> titleNeighbors = {
    "bottom": const PdfFilesComponent(),
    "left": const SizedBox.shrink(),
    "right": NotificationIconItem(),
    "top": const SwitchComponent(),
  };

  Map<String, dynamic> recordNeighbors = {
    "bottom": const VideosFilesComponent(),
    "left": const SizedBox.shrink(),
    "right": ImagesFilesComponent(),
    "top": const PdfFilesComponent(),
  };

  Map<String, dynamic> pdfNeighbors = {
    "bottom": const VideosFilesComponent(),
    "left": const SizedBox.shrink(),
    "right": FilesComponent(),
    "top": const TitleTextComponent(),
  };

  Map<String, dynamic> notificationIconNeighbors = {
    "bottom": FilesComponent(),
    "left": const TitleTextComponent(),
    "right": const SizedBox.shrink(),
    "top": HeadsetIconComponent(),
  };
  Map<String, dynamic> imagesNeighbors = {
    "bottom": const VideosFilesComponent(),
    "left": const RecordComponent(),
    "right": const SizedBox.shrink(),
    "top": FilesComponent(),
  };

/////======/////////////

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
