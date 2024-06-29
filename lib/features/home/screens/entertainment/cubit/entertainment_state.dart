part of 'entertainment_cubit.dart';

enum ChangeEntertainmentNavigationState {
  initial,
  success,
}

enum ChangeCurrentEntertainmentControllerComponent {
  initial,
  success,
}

class EntertainmentState {
  final ChangeEntertainmentNavigationState changeEntertainmentNavigationState;
  final ChangeCurrentEntertainmentControllerComponent
      changeCurrentEntertainmentControllerComponent;
  bool? isClicked;

  EntertainmentState({
    this.changeEntertainmentNavigationState =
        ChangeEntertainmentNavigationState.initial,
    this.changeCurrentEntertainmentControllerComponent =
        ChangeCurrentEntertainmentControllerComponent.initial,
    this.isClicked,
  });

  EntertainmentState copyWith({
    ChangeEntertainmentNavigationState? changeEntertainmentNavigationState,
    ChangeCurrentEntertainmentControllerComponent?
        changeCurrentEntertainmentControllerComponent,
    bool? isClicked,
    int? stepsCountIncontrller = -1,
  }) {
    return EntertainmentState(
      changeEntertainmentNavigationState: changeEntertainmentNavigationState ??
          this.changeEntertainmentNavigationState,
      changeCurrentEntertainmentControllerComponent:
          changeCurrentEntertainmentControllerComponent ??
              this.changeCurrentEntertainmentControllerComponent,
      isClicked: isClicked ?? this.isClicked ?? false,
    );
  }
}
