// ignore_for_file: override_on_non_overriding_member

part of 'home_cubit.dart';

enum ChangeHomeStateNavigationState {
  initial,
  success,
}

enum ChangeCurrentHomeStateControllerComponent {
  initial,
  success,
}

class HomeState {
  final ChangeHomeStateNavigationState changeHomeStateNavigationState;
  final ChangeCurrentHomeStateControllerComponent
      changeCurrentHomeStateControllerComponent;
  bool? isClicked;

  HomeState({
    this.changeHomeStateNavigationState =
        ChangeHomeStateNavigationState.initial,
    this.changeCurrentHomeStateControllerComponent =
        ChangeCurrentHomeStateControllerComponent.initial,
    this.isClicked,
  });

  HomeState copyWith({
    ChangeHomeStateNavigationState? changeHomeStateNavigationState,
    ChangeCurrentHomeStateControllerComponent?
        changeCurrentHomeStateControllerComponent,
    bool? isClicked,
    int? stepsCountIncontrller = -1,
  }) {
    return HomeState(
      changeHomeStateNavigationState:
          changeHomeStateNavigationState ?? this.changeHomeStateNavigationState,
      changeCurrentHomeStateControllerComponent:
          changeCurrentHomeStateControllerComponent ??
              this.changeCurrentHomeStateControllerComponent,
      isClicked: isClicked ?? this.isClicked ?? false,
    );
  }
}
