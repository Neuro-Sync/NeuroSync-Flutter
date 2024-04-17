// ignore_for_file: override_on_non_overriding_member

part of 'app_cubit.dart';

enum ChangeCurrentRegisterScreen {
  initial,
  success,
}

enum ChangeCurrentChild {
  initial,
  success,
}

enum Changestate {
  initial,
  success,
}

class AppState {
  final ChangeCurrentRegisterScreen changeCurrentRegisterScreen;
  final ChangeCurrentChild changeCurrentChild;
  final Changestate changestate;
  bool? isClicked;

  AppState({
    this.changeCurrentRegisterScreen = ChangeCurrentRegisterScreen.initial,
    this.changeCurrentChild = ChangeCurrentChild.initial,
    this.changestate = Changestate.initial,
    this.isClicked,
  });

  AppState copyWith({
    ChangeCurrentRegisterScreen? changeCurrentRegisterScreen,
    ChangeCurrentChild? changeCurrentChild,
    Changestate? changestate,
    bool? isClicked,
    int? stepsCountIncontrller = -1,
  }) {
    return AppState(
        changeCurrentChild: changeCurrentChild ?? this.changeCurrentChild,
        changeCurrentRegisterScreen:
            changeCurrentRegisterScreen ?? this.changeCurrentRegisterScreen,
        changestate: changestate ?? this.changestate,
        isClicked: isClicked ?? this.isClicked ?? false,
    );
  }
}
