import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neurosync/core/app_cubit/app_cubit.dart';
import 'package:neurosync/features/auth/widgets/date_picker_item.dart';
import 'package:neurosync/features/auth/widgets/gender_dropdown_menu.dart';
import 'package:neurosync/features/auth/widgets/registeration_code_item.dart';
import 'package:neurosync/features/auth/widgets/registeration_item.dart';

class ChangableRegisterationCore extends StatelessWidget {
  const ChangableRegisterationCore({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        switch (cubit.currentIndex) {
          case 0:
            return RegisterationItem(
              controller: TextEditingController(),
              hinttxt: "Enter your full name....",
              subtitle: "Enter your name so that it is easily recognized",
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
              subtitle: "Enter your email so that it is easily send code ",
              type: TextInputType.emailAddress,
            );
          case 3:
            return const RegisterationCodeItem();
          case 4:
            return GenderSelection();

          default:
        }
        return const Placeholder();
      },
    );
  }
}
