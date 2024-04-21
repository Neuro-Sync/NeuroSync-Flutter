import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/app_cubit/app_cubit.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_size.dart';

class RegisterationAppBar extends StatelessWidget {
  const RegisterationAppBar({super.key, required this.currentScreen});
  final int currentScreen;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        return Row(
          children: [
            Gap(24.w),
            InkWell(
              onTap: () {
                switch (cubit.currentIndex) {
                  case 1:
                    cubit.changeCurrentregisterScreen(0);
                  case 2:
                    cubit.changeCurrentregisterScreen(1);

                  case 3:
                    cubit.changeCurrentregisterScreen(2);

                  case 4:
                    cubit.changeCurrentregisterScreen(3);

                  default:
                }
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            AppText(
              "Step ${currentScreen} of 5",
              color: Colors.black,
              fontSize: FontSizes.large,
              fontWeight: FontWeight.w900,
            ),
            Gap(24.w),
          ],
        );
      },
    );
  }
}
