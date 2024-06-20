import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/components/app_text.dart';
import 'package:neurosync/core/theming/app_font_family.dart';
import '../widgets/image_entertainment_controller/image_entertainment_controller_item.dart';
import '../widgets/image_entertainment_controller/image_entertainment_controller_lower_section.dart';
import '../widgets/image_entertainment_controller/image_entertainment_controller_upper_section.dart';

class ImageEntertainmentScreen extends StatelessWidget {
  const ImageEntertainmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 370.w,
              height: 925.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  const ImagesEntertainmentControllerUpperSection(),
                  Gap(250.h),
                  const ImagesEntertainmentControllerItem(),
                  Gap(80.h),
                  const ImagesEntertainmentControllerLowerItem(),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(25.h),
                    AppText(
                      "Images",
                      fontSize: 50.sp,
                      fontFamily: FontConstants.interMediumFont,
                    ),
                    Gap(20.h),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Wrap(
                        direction: Axis.horizontal,
                        spacing: 10.w, // horizental
                        runSpacing: 10.h, // vertical
                        children: List.generate(
                            5,
                            (index) => SizedBox(
                                  width: 222.w,
                                  height: 178.h,
                                  child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl:
                                          "https://cdn.prod.website-files.com/6009ec8cda7f305645c9d91b/6408f6e7b5811271dc883aa8_batman-min.png"),
                                )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
