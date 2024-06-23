import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/theming/app_styles.dart';

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
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Gap(
            150.h,
          ),
          Text(
            title.tr(),
            textAlign: TextAlign.center,
            style: TextStyles.font48BlackInterBold,
          ),
          Gap(
            gapHeight,
          ),
          Text(
            body,
            textAlign: TextAlign.center,
            style: TextStyles.font18BlackInterMedium,
          ),
        ],
      ),
    );
  }
}
