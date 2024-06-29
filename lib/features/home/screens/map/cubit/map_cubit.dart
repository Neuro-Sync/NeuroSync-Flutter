import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:neurosync/features/home/screens/map/widgets/map_controller_middle_section/companion_btn.dart';
import 'package:neurosync/features/home/screens/map/widgets/map_controller_middle_section/home_btn.dart';
import 'package:neurosync/features/home/screens/wheelchair/widgets/wheelchair_controller/wheelchair_controller_item/arrow_left.dart';
import 'package:neurosync/features/home/screens/wheelchair/widgets/wheelchair_controller/wheelchair_controller_item/arrow_up.dart';
import 'package:neurosync/features/home/screens/wheelchair/widgets/wheelchair_controller/wheelchair_controller_item/stop_btn.dart';

import '../widgets/map_controller_middle_section/clinic_btn.dart';
import '../widgets/map_lower_section/back_btn.dart';
import '../widgets/map_lower_section/get_current_location.dart';
import '../widgets/map_controller_middle_section/office_btn.dart';
part 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit() : super(MapState());

  static MapCubit get(context) => BlocProvider.of(context);
  GoogleMapController? mapController;
  dynamic componentWidget = const MapBackBtn();
  Set<Marker> markers = {};

//  actions in Main Components BCI

  void actionsInMainComponentsBCI(context, {required LatLng latLng}) {
    log("------------------------------------");
    if (compareWidgets(componentWidget, const MapCompanionBtn()) ||
        compareWidgets(componentWidget, const MapClinicBtn()) ||
        compareWidgets(componentWidget, const MapHomeBtn()) ||
        compareWidgets(componentWidget, const MapOfficeBtn()) ||
        compareWidgets(componentWidget, const GetCurrentLocationBtn())) {
      mapController
          ?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: latLng,
        zoom: 14,
        bearing: 192.8334901395799,
        tilt: 59.440717697143555,
      )));
      markers.clear();
      log("=================================");
      markers.add(Marker(
        markerId: const MarkerId('1'),
        position: latLng,
        icon: BitmapDescriptor.defaultMarker,
      ));
    }
    emit(state.copyWith(
        changeCurrentMapStateMapLocation:
            ChangeCurrentMapStateMapLocation.success));
  }

//  actions in Main Components BCI

// ===========  map Controller BCI =====

  Map<String, dynamic> backBtnNeighbors = {
    "top": const GetCurrentLocationBtn(),
  };
  Map<String, dynamic> getCurrentLocationBtnNeighbors = {
    "top": const MapOfficeBtn(),
  };

  Map<String, dynamic> mapOfficeBtnNeighbors = {
    "top": const MapClinicBtn(),
  };
  Map<String, dynamic> mapClinicBtnNeighbors = {
    "top": const MapHomeBtn(),
  };
  Map<String, dynamic> companionBtnNeighbors = {
    "top": const MapBackBtn(),
  };
  Map<String, dynamic> homeBtnNeighbors = {
    "top": const MapCompanionBtn(),
    // (),
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
        changeCurrentMapStateControllerComponent:
            ChangeCurrentMapStateControllerComponent.success));
  }

  void navigation(
    context,
  ) {
    switch (componentWidget) {
      case MapCompanionBtn():
        actionsInMainComponentsBCI(
            latLng: const LatLng(21.425, 39.828), context);
        break;
      case MapClinicBtn():
        actionsInMainComponentsBCI(
            latLng: const LatLng(22.425, 39.828), context);
        break;

      case MapHomeBtn():
        actionsInMainComponentsBCI(
            latLng: const LatLng(23.425, 39.828), context);
        break;

      case MapOfficeBtn():
        actionsInMainComponentsBCI(
            latLng: const LatLng(24.425, 39.828), context);
        break;

      //
      default:
        print("Unknown component widget: $componentWidget");
    }
    emit(state.copyWith(
        changeMapStateNavigationState: ChangeMapStateNavigationState.success));
  }
}
  // ===========  wheelchair Utils Methods =====
