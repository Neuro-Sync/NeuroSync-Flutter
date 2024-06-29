// ignore_for_file: must_be_immutable, unused_element

import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../cubit/entertainment_cubit.dart';
import '../widgets/entertainment_controller/entertainment_controller_item/entertainment_controller_arrow_up.dart';
import '../widgets/entertainment_controller/entertainment_controller_item/entertainment_controller_item.dart';
import '../widgets/entertainment_controller/entertainment_controller_lower_section/entertainment_back_btn.dart';
import '../widgets/entertainment_controller/entertainment_controller_lower_section/entertainment_controller_lower_section.dart';
import '../widgets/entertainment_controller/entertainment_controller_upper_section.dart';
import '../widgets/controlled_entertainment_content/general_entertainment_content.dart';

class EnterTainMentScreen extends StatefulWidget {
  const EnterTainMentScreen({super.key});

  @override
  State<EnterTainMentScreen> createState() => _EnterTainMentScreenState();
}

class _EnterTainMentScreenState extends State<EnterTainMentScreen> {
  Timer? _timer;
  Timer? _navigationtimer;
  bool isReachedTop = false;
  int isAction = 0;
  @override
  void initState() {
    super.initState();
    // _startControllerTimer(context);
    // _navigationTimer(context);
    // _stopTimerAfterDuration(const Duration(seconds: 7));
  }

  @override
  void dispose() {
    _timer?.cancel();
    _navigationtimer?.cancel();
    super.dispose();
  }

  void _startControllerTimer(context) {
    EntertainmentCubit entertainmentCubit = EntertainmentCubit.get(context);
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (entertainmentCubit.selectedControllercomponent == null) {
        // Setting Initial Point
        entertainmentCubit.changeCurrentControllerEntertainmentComponent(
            context,
            selectedControllercomponent: const EntertainmentBackBtn(),
            action: isAction);
        log("Setting Initial Point");
      } else {
        if (entertainmentCubit.compareWidgets(
            entertainmentCubit.selectedControllercomponent,
            const EntertainmentControllerArrowUp())) {
          // Resetting
          entertainmentCubit.changeCurrentControllerEntertainmentComponent(
            context,
            selectedControllercomponent: null,
            action: isAction,
          );

          log("Resetting");
        } else {
          entertainmentCubit.changeCurrentControllerEntertainmentComponent(
              context,
              selectedControllercomponent: entertainmentCubit
                  .selectedControllercomponent
                  .neighbors(context)["top"],
              action: isAction);
        }
      }
    });
  }

  // void _startMainContentTimer(context) {
  //   EntertainmentCubit entertainmentCubit = EntertainmentCubit.get(context);
  //   _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
  //     if (entertainmentCubit.selectedControllercomponent == null) {
  //       // Setting Initial Point
  //       entertainmentCubit.changeCurrentControllerEntertainmentComponent(
  //           selectedControllercomponent: const EntertainmentBackBtn());
  //       log("Setting Initial Point");
  //     } else {
  //       if (entertainmentCubit.compareWidgets(
  //           entertainmentCubit.selectedControllercomponent,
  //           const EntertainmentControllerArrowUp())) {
  //         // Resetting
  //         entertainmentCubit.changeCurrentControllerEntertainmentComponent(
  //             selectedControllercomponent: null);

  //         log("Resetting");
  //       } else {
  //         entertainmentCubit.changeCurrentControllerEntertainmentComponent(
  //             selectedControllercomponent: entertainmentCubit
  //                 .selectedControllercomponent
  //                 .neighbors(context)["top"]);
  //       }
  //     }
  //   });
  // }

  void _navigationTimer(context) {
    EntertainmentCubit entertainmentCubit = EntertainmentCubit.get(context);
    _navigationtimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      isAction = 1;
    });
  }

  void _stopTimerAfterDuration(Duration duration) {
    Future.delayed(duration, () {
      _navigationtimer?.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 370.w,
            height: 925.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Column(
              children: [
                const EntertainmentControllerUpperSection(),
                Gap(250.h),
                const EntertainmentControllerItem(),
                Gap(80.h),
                const EntertainmentControllerLowerSection(),
              ],
            ),
          ),
          const GeneralEntertainmentContent()
        ],
      ),
    ));
  }
}
