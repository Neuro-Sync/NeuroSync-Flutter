import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../../../../core/components/app_text.dart';
import '../../../../../../../core/theming/app_font_family.dart';
import '../widgets/video_entertainment_controller/video_entertainment_controller_item.dart';
import '../widgets/video_entertainment_controller/video_entertainment_controller_lower_section.dart';
import '../widgets/video_entertainment_controller/video_entertainment_controller_upper_section.dart';

class VideoEntertainmentScreen extends StatelessWidget {
  const VideoEntertainmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                  const VideoEntertainmentControllerUpperSection(),
                  Gap(250.h),
                  const VideoEntertainmentControllerItem(),
                  Gap(80.h),
                  const VideoEntertainmentControllerLowerSection(),
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
                      "Videos",
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
                                  child: Image.asset(
                                      "assets/images/dummy_image.png",
                                      fit: BoxFit.cover)
                                  // CachedNetworkImage(
                                  //     fit: BoxFit.cover,
                                  //     imageUrl:
                                  //         "https://cdn.prod.website-files.com/6009ec8cda7f305645c9d91b/6408f6e7b5811271dc883aa8_batman-min.png")
                                  ,
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
