import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/app_cubit/app_cubit.dart';
import 'package:neurosync/core/resources/app_assets.dart';
import 'package:neurosync/features/auth/widgets/date_picker_item.dart';
import 'package:neurosync/features/auth/widgets/gender_dropdown_menu.dart';
import 'package:neurosync/features/auth/widgets/registeration_code_item.dart';
import 'package:neurosync/features/auth/widgets/registeration_item.dart';

import '../../../core/components/app_button.dart';
import '../../../core/resources/app_size.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_font_family.dart';
import '../screens/last_registeration_screen.dart';

class ChangableRegisterationCore extends StatelessWidget {
  const ChangableRegisterationCore({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 250.h,
                  child: BlocBuilder<AppCubit, AppState>(
                    builder: (context, state) {
                      AppCubit cubit = AppCubit.get(context);
                      switch (cubit.currentIndex) {
                        case 0:
                          return RegisterationItem(
                            controller: TextEditingController(),
                            hinttxt: "Enter your full name....",
                            subtitle:
                                "Enter your name so that it is easily recognized",
                            title: "What’s Your Name?",
                            type: TextInputType.name,
                          );
                        case 1:
                          return const DatePicker();

                        case 2:
                          return RegisterationItem(
                            controller: TextEditingController(),
                            hinttxt: "Enter your Email...",
                            title: "Enter your email",
                            subtitle:
                                "Enter your email so that it is easily send code ",
                            type: TextInputType.emailAddress,
                          );
                        case 3:
                          return const RegisterationCodeItem();
                        case 4:
                          return const GenderSelection();

                        default:
                      }
                      return const Placeholder();
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.w,
                  ),
                  child: AppButton(
                    color: AppColors.blueColor,
                    titleColor: Colors.white,
                    width: 488.w,
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
            ),
            Gap(132.w),
            SvgPicture.asset(
              "assets/images/onboard.svg",
              width: 534.w,
              height: 494.h,
            )
          ],
        );
      },
    );
  }
}
