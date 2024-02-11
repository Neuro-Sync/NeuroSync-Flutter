import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/app_cubit/app_cubit.dart';
import 'package:neurosync/core/components/app_button.dart';
import 'package:neurosync/core/resources/app_colors.dart';
import 'package:neurosync/core/resources/app_font_family.dart';
import 'package:neurosync/core/resources/app_size.dart';
import 'package:neurosync/features/auth/screens/last_registeration_screen.dart';
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
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(50.h),
              RegisterationAppBar(
                currentScreen: cubit.currentIndex,
              ),
              Gap(32.h),
              const ChangableRegisterationCore(),
              Gap(32.h),
              Center(
                child: AppButton(
                  color: AppColors.btnRegisterationColor,
                  titleColor: Colors.white,
                  width: 327.w,
                  height: 50.h,
                  title: cubit.currentIndex == 3 ? "Send Code" : "Next",
                  radius: 10.sp,
                  fontFamily: FontConstants.lorasemiBoldFont,
                  fontSize: FontSizes.small,
                  onTap: () {
                    switch (cubit.currentIndex) {
                      case 0:
                        cubit.changeCurrentregisterScreen(1);
                      case 1:
                        cubit.changeCurrentregisterScreen(2);

                      case 2:
                        cubit.changeCurrentregisterScreen(3);

                      case 3:
                        cubit.changeCurrentregisterScreen(4);
                      case 4:
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) =>
                                const RegisterationCongratulationsScreen(),
                          ),
                        );

                      default:
                    }
                    return const Placeholder();
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
