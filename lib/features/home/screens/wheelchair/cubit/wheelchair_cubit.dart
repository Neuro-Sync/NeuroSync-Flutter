import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:neurosync/features/home/screens/wheelchair/widgets/wheelchair_controller/wheelchair_controller_item/arrow_left.dart';
import 'package:neurosync/features/home/screens/wheelchair/widgets/wheelchair_controller/wheelchair_controller_item/arrow_up.dart';
import 'package:neurosync/features/home/screens/wheelchair/widgets/wheelchair_controller/wheelchair_controller_item/stop_btn.dart';
import '../widgets/wheelchair_controller/wheelchair_controller_item/arrow_right.dart';
import '../widgets/wheelchair_controller/wheelchair_controller_lower_section/undo_btn.dart';

part 'wheelchair_state.dart';

class WheelcairCubit extends Cubit<WheelcairState> {
  WheelcairCubit() : super(WheelcairState());

  static WheelcairCubit get(context) => BlocProvider.of(context);
  GoogleMapController? mapController;
  dynamic componentWidget = const WheelcairBackBtn();
  Set<Marker> markers = {};

//  actions in Main Components BCI

//  actions in Main Components BCI

// ===========  wheelchair Controller BCI =====

  Map<String, dynamic> backBtnNeighbors = {
    "top": const WheelchairArrowRight(),
  };

  Map<String, dynamic> wheelchairControllerArrowLeftBtnNeighbors = {
    "top": const WheelchairArrowUp(),
  };
  Map<String, dynamic> wheelchairControllerArrowUpBtnNeighbors = {
    "top": const WheelcairBackBtn(),
  };
  Map<String, dynamic> wheelchairControllerArrowRightBtnNeighbors = {
    "top": const WheelchairStopBtn(),
  };

  Map<String, dynamic> wheelchairStopBtnNeighbors = {
    "top": const WheelchairArrowLeft(),
  };

  // ===========  wheelchair Controller BCI =====

  // ===========  wheelchair Utils Methods =====

  bool compareWidgets(Widget widget1, Widget widget2) {
    if (widget1.runtimeType != widget2.runtimeType) {
      return false;
    } else {
      return true;
    }
  }

  void changeCurrentChatControllerComponent(context,
      {dynamic selectedControllercomponent, int? action}) {
    componentWidget = selectedControllercomponent;
    // if (action == 1) {
    navigation(context);
    // }
    emit(state.copyWith(
        changeCurrentWheelcairControllerComponent:
            ChangeCurrentWheelcairControllerComponent.success));
  }

  void navigation(
    context,
  ) {
    switch (componentWidget) {
      case WheelchairArrowRight():
        break;
      case WheelchairArrowUp():
        break;

      case WheelchairArrowLeft():
        break;

      case WheelchairStopBtn():
        break;

      //
      default:
        print("Unknown component widget: $componentWidget");
    }
    emit(state.copyWith(
        changeWheelcairNavigationState:
            ChangeWheelcairNavigationState.success));
  }
}
  // ===========  wheelchair Utils Methods =====
