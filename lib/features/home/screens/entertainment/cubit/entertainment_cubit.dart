import 'package:flutter_bloc/flutter_bloc.dart';
part 'entertainment_state.dart';

class EntertainmentCubit extends Cubit<EntertainmentState> {
  EntertainmentCubit() : super(EntertainmentState()) {}

  static EntertainmentCubit get(context) => BlocProvider.of(
        context,
      );

  // void changeEntertainmentMainContent(
  //     EntertainmentMediaTypes entertainmentMediaType) {
  //   emit(state.copyWith(entertainmentMediaTypes: entertainmentMediaType));
  // }
}
