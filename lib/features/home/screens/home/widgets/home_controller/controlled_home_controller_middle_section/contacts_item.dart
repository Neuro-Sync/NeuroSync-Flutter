import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/features/home/screens/contacts/screens/contacts_screen.dart';

import '../../../../../../../core/components/app_text.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_font_family.dart';
import '../../../../../../../core/utils/nav_utils.dart';
import '../../../../../../preparing/widgets/child_component.dart';
import '../../../cubit/home_cubit.dart';

class ContactsItem extends StatelessWidget {
  const ContactsItem({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      HomeCubit.get(context).contactsBtnNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final homeCubit = HomeCubit.get(context);
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: homeCubit.componentWidget != null
                      ? homeCubit.compareWidgets(
                              homeCubit.componentWidget, const ContactsItem())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            top: homeCubit.contactsBtnNeighbors["top"],
            childContent: InkWell(
              onTap: () {
                pushScreen(context, const ContactsScreen());
              },
              child: Container(
                height: 100.h,
                width: 110.w,
                decoration: BoxDecoration(
                    color: AppColors.chattopbarColor,
                    borderRadius: BorderRadius.circular(9.r)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.contacts,
                      color: AppColors.bluecolorEntertainment,
                    ),
                    Gap(6.h),
                    AppText(
                      "Contacts",
                      color: AppColors.blackColor,
                      fontSize: 10.sp,
                      fontFamily: FontConstants.interSemiBoldFont,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
