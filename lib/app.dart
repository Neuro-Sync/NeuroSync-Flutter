// ignore_for_file: use_build_context_synchronously


import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:neurosync/core/app_cubit/app_cubit.dart';
import 'package:neurosync/core/network/remote/locator.dart';
import 'package:neurosync/core/utils/locator_utils.dart';
import 'package:neurosync/core/validators/bloc_providers.dart';
import 'package:neurosync/features/preparing/screens/test_AI_model/screens/test_ai_model_screen.dart';
import 'package:sizer/sizer.dart';



class MyApp extends StatefulWidget {
  const MyApp({Key? key, this.remoteMessage}) : super(key: key);
  final RemoteMessage? remoteMessage;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String lang;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    lang = context.locale.toString();
    LocatorUtils().pref().userLocal = lang;
    return MultiBlocProvider(
      providers: BlocProviders.providers(context),
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            DeviceType deviceType) {
     
          return BlocBuilder<AppCubit, AppState>(
            builder: (context, state) {
              return MaterialApp(
                theme: ThemeData(),

                debugShowCheckedModeBanner: false,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                navigatorKey: locator<NavigationService>().navigatorKey,
                // onGenerateRoute: RouterGenarator.generateRoute,
                home: TestSumModelScreen(),
              );
            },
          );
        },
      ),
    );
  }
}
