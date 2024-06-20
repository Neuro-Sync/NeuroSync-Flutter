import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/screens/entertainment/cubit/entertainment_cubit.dart';
import '../app_cubit/app_cubit.dart';

class BlocProviders {
  static List<BlocProvider> providers(BuildContext context) => [
        BlocProvider<AppCubit>(
          create: (context) => AppCubit(),
        ),
        BlocProvider<EntertainmentCubit>(
          create: (context) => EntertainmentCubit(),
        ),
      ];
}
