// ignore_for_file: override_on_non_overriding_member

part of 'wheelchair_cubit.dart';

enum ChangeWheelcairNavigationState {
  initial,
  success,
}

enum ChangeCurrentWheelcairControllerComponent {
  initial,
  success,
}

enum ChangeCurrentWheelcairMapLocation {
  initial,
  success,
}

class WheelcairState {
  final ChangeWheelcairNavigationState changeWheelcairNavigationState;
  final ChangeCurrentWheelcairMapLocation changeCurrentWheelcairMapLocation;
  final ChangeCurrentWheelcairControllerComponent
      changeCurrentWheelcairControllerComponent;
  bool? isClicked;

  WheelcairState({
    this.changeWheelcairNavigationState =
        ChangeWheelcairNavigationState.initial,
    this.changeCurrentWheelcairMapLocation =
        ChangeCurrentWheelcairMapLocation.initial,
    this.changeCurrentWheelcairControllerComponent =
        ChangeCurrentWheelcairControllerComponent.initial,
    this.isClicked,
  });

  WheelcairState copyWith({
    ChangeWheelcairNavigationState? changeWheelcairNavigationState,
    ChangeCurrentWheelcairControllerComponent?
        changeCurrentWheelcairControllerComponent,
    ChangeCurrentWheelcairMapLocation? changeCurrentWheelcairMapLocation,
    bool? isClicked,
    int? stepsCountIncontrller = -1,
  }) {
    return WheelcairState(
        changeWheelcairNavigationState: changeWheelcairNavigationState ??
            this.changeWheelcairNavigationState,
        changeCurrentWheelcairControllerComponent:
            changeCurrentWheelcairControllerComponent ??
                this.changeCurrentWheelcairControllerComponent,
        isClicked: isClicked ?? this.isClicked ?? false,
        changeCurrentWheelcairMapLocation: changeCurrentWheelcairMapLocation ??
            this.changeCurrentWheelcairMapLocation);
  }
}
