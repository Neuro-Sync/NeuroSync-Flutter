import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_states.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppInitial());

  void onUpdateData(String lang) {
    emit(AppData(lang: lang, changed: !state.changed));
  }



}
