// ignore_for_file: override_on_non_overriding_member

part of 'map_cubit.dart';

enum ChangeMapStateNavigationState {
  initial,
  success,
}

enum ChangeCurrentMapStateControllerComponent {
  initial,
  success,
}

enum ChangeCurrentMapStateMapLocation {
  initial,
  success,
}

class MapState {
  final ChangeMapStateNavigationState changeMapStateNavigationState;
  final ChangeCurrentMapStateMapLocation changeCurrentMapStateMapLocation;
  final ChangeCurrentMapStateControllerComponent
      changeCurrentMapStateControllerComponent;
  bool? isClicked;

  MapState({
    this.changeMapStateNavigationState = ChangeMapStateNavigationState.initial,
    this.changeCurrentMapStateMapLocation =
        ChangeCurrentMapStateMapLocation.initial,
    this.changeCurrentMapStateControllerComponent =
        ChangeCurrentMapStateControllerComponent.initial,
    this.isClicked,
  });

  MapState copyWith({
    ChangeMapStateNavigationState? changeMapStateNavigationState,
    ChangeCurrentMapStateControllerComponent?
        changeCurrentMapStateControllerComponent,
    ChangeCurrentMapStateMapLocation? changeCurrentMapStateMapLocation,
    bool? isClicked,
    int? stepsCountIncontrller = -1,
  }) {
    return MapState(
        changeMapStateNavigationState:
            changeMapStateNavigationState ?? this.changeMapStateNavigationState,
        changeCurrentMapStateControllerComponent:
            changeCurrentMapStateControllerComponent ??
                this.changeCurrentMapStateControllerComponent,
        isClicked: isClicked ?? this.isClicked ?? false,
        changeCurrentMapStateMapLocation: changeCurrentMapStateMapLocation ??
            this.changeCurrentMapStateMapLocation);
  }
}
