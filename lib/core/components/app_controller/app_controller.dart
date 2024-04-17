import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/app_cubit/app_cubit.dart';

import 'controller_components/controller_back_btn.dart';
import 'controller_components/controller_bottom_btn.dart';
import 'controller_components/controller_click_btn.dart';
import 'controller_components/controller_disable_btn.dart';
import 'controller_components/controller_forward_btn.dart';
import 'controller_components/controller_left_btn.dart';
import 'controller_components/controller_right_btn.dart';
import 'controller_components/controller_top_btn.dart';

class AppController extends StatelessWidget {
  const AppController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, appstate) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ControllerBackbtn(right: ControllerClickbtn()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ControllerTopbtn(
                    bottom: ControllerClickbtn(),
                  ),
                  Gap(16.h),
                  Row(
                    children: [
                      const ControllerLeftbtn(
                        right: ControllerClickbtn(),
                      ),
                      Gap(8.w),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ControllerClickbtn(
                            right: appstate.isClicked == true
                                ? const ControllerRightbtn()
                                : const ControllerForwardbtn(),
                            top: appstate.isClicked == true
                                ? const ControllerTopbtn()
                                : const SizedBox.shrink(),
                            bottom: appstate.isClicked == true
                                ? const ControllerDisablebtn(
                                    bottom: ControllerBottombtn(),
                                    top: ControllerClickbtn(),
                                  )
                                : const SizedBox.shrink(),
                          ),
                          Gap(5.h),
                          Visibility(
                            visible: appstate.isClicked==true?true:false,
                            child: const ControllerDisablebtn(
                              top: ControllerClickbtn(),
                              bottom: ControllerBottombtn(),
                              right: ControllerRightbtn(),
                              left: ControllerLeftbtn(),
                            ),
                          )
                        ],
                      ),
                      Gap(8.w),
                      const ControllerRightbtn(
                        left: ControllerClickbtn(),
                      )
                    ],
                  ),
                  Gap(16.h),
                  const ControllerBottombtn(
                    top: ControllerDisablebtn(),
                  )
                ],
              ),
              const ControllerForwardbtn(
                left: ControllerClickbtn(),
              ),
            ],
          ),
        );
      },
    );
  }
}
