import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/resources/app_size.dart';

import '../../../core/theming/app_colors.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody(
      {super.key,
      required this.title,
      required this.body,
      required this.gapHeight});
  final String title;
  final String body;
  final double gapHeight;
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Gap(
                  290.h,
                ),
                AppText(
                  title.tr(),
                  textAlign: TextAlign.center,
                  fontSize: FontSizes.veryLarge,
                  color: Colors.white,
                ),
                Gap(
                  gapHeight,
                ),
                AppText(
                  body,
                  textAlign: TextAlign.center,
                  fontSize: FontSizes.medium,
                  color: AppColors.introBodyColor,
                ),
              ],
            ),
          );
        } else {
          return Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Gap(
                  50.h,
                ),
                AppText(
                  title.tr(),
                  textAlign: TextAlign.center,
                  fontSize: FontSizes.veryLarge,
                  color: Colors.white,
                ),
                Gap(
                  gapHeight,
                ),
                AppText(
                  body,
                  textAlign: TextAlign.center,
                  fontSize: FontSizes.medium,
                  color: AppColors.introBodyColor,
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
