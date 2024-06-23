import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neurosync/core/theming/app_colors.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../preparing/widgets/child_component.dart';

class ContactsControllerArrowDown extends StatelessWidget {
  const ContactsControllerArrowDown({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SvgPicture.asset(
        AppAssets.arrow_down_ic,
        color: AppColors.blueColor,
        width: 40.w,
        height: 40.h,
      ),
    );
  }
}
