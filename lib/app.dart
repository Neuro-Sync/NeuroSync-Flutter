// ignore_for_file: use_build_context_synchronously

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/core/theming/app_theme.dart';
import 'package:neurosync/core/validators/bloc_providers.dart';
import 'package:neurosync/features/home/screens/home/screens/home_screen.dart';
import 'package:neurosync/features/home/screens/map/screens/map_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key, this.remoteMessage}) : super(key: key);
  final RemoteMessage? remoteMessage;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: BlocProviders.providers(context),
        child: ScreenUtilInit(
            designSize: const Size(1440, 960),
            minTextAdapt: true,
            splitScreenMode: true,
            useInheritedMediaQuery: true,
            builder: (context, child) {
              return MaterialApp(
                theme: CustomTheme.themeData,
                debugShowCheckedModeBanner: false,
                home: const HomeScreen(),
              );
            }));
  }
}
