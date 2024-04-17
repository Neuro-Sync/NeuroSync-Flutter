import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/resources/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class ContactControllerLowerSection extends StatefulWidget {
  const ContactControllerLowerSection({super.key});

  @override
  State<ContactControllerLowerSection> createState() =>
      _ContactControllerLowerSectionState();
}

class _ContactControllerLowerSectionState
    extends State<ContactControllerLowerSection> {
  bool isActivated = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(67.h),
        // controller end
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      isActivated = true;
                    });
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                      Size(154.w, 51.h),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            164.0.r), // Replace 10.0 with your desired radius
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        isActivated == true
                            ? Colors.white
                            : AppColors.grey.withOpacity(0.5)),
                  ),
                  child: Text(
                    "Activate",
                    style: TextStyles.font20greySemiBold,
                  ),
                ),
              ),
              Gap(14.w),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      isActivated = false;
                    });
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                      Size(154.w, 51.h),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            164.0.r), // Replace 10.0 with your desired radius
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        isActivated == false
                            ? Colors.white
                            : AppColors.grey.withOpacity(0.5)),
                  ),
                  child: Text(
                    "Deactivate",
                    style: TextStyles.font20greySemiBold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Gap(39.h),
        OutlinedButton(
          onPressed: () {
            setState(() {
              isActivated = true;
            });
          },
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              Size(301.w, 56.h),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    164.0.r), // Replace 10.0 with your desired radius
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
                AppColors.grey.withOpacity(0.5)),
          ),
          child: Image.asset(
            AppAssets.undo_IC,
            width: 40.w,
            height: 40.h,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
