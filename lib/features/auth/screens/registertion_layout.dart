import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/app_cubit/app_cubit.dart';
import 'package:neurosync/features/auth/widgets/changable_registeration_layout_core.dart';
import 'package:neurosync/features/auth/widgets/registeration_appbar.dart';

class RegisterationLayout extends StatelessWidget {
  const RegisterationLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          AppCubit cubit = AppCubit.get(context);
          return Padding(
            padding: EdgeInsets.only(left: 70.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(50.h),
                RegisterationAppBar(
                  currentScreen: cubit.currentIndex,
                ),
                Gap(120.h),
                const ChangableRegisterationCore(),
              ],
            ),
          );
        },
      ),
    );
  }
}
