import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../preparing/widgets/child_component.dart';

class ContactsControllerArrowUp extends StatelessWidget {
  const ContactsControllerArrowUp({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SvgPicture.asset(
        AppAssets.arrow_up_ic,
        color: AppColors.blueColor,
        width: 40.w,
        height: 40.h,
      ),
    );
  }
}
