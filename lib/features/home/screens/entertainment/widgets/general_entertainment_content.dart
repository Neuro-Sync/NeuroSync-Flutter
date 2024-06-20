import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/core/utils/nav_utils.dart';
import 'package:neurosync/features/home/screens/entertainment/screens/audio_screen/screens/audio_entertainment_screen.dart';
import 'package:neurosync/features/home/screens/entertainment/widgets/entertainment_item.dart';

import '../../../../../core/components/app_text.dart';
import '../../../../../core/resources/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_font_family.dart';
import '../cubit/entertainment_cubit.dart';
import '../screens/document_screen/screens/doc_entertainment_screen.dart';
import '../screens/folder_screen/screens/folder_entertainment_screen.dart';
import '../screens/image_screen/screens/image_entertainment_screen.dart';
import '../screens/video_screen/screens/videoes_entertainment_screen.dart';

class GeneralEntertainmentContent extends StatelessWidget {
  const GeneralEntertainmentContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EntertainmentCubit, EntertainmentState>(
      builder: (context, state) {
        EntertainmentCubit entertainmentCubit = EntertainmentCubit.get(context);
        return Expanded(
          child: Container(
              color: AppColors.greycolor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 40.h, left: 40.w, bottom: 40.h),
                    child: AppText(
                      "File Managment",
                      color: AppColors.blackColor,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w900,
                      fontFamily: FontConstants.interSemiBoldFont,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Row(children: [
                      EntertainmentMediaItem(
                          onTap: () {
                            pushScreen(
                                context, const ImageEntertainmentScreen());
                          },
                          path: AppAssets.images_IC,
                          title: "Images",
                          bgColor: AppColors.bluecolorEntertainment
                              .withOpacity(0.1)),
                      EntertainmentMediaItem(
                          onTap: () {
                            pushScreen(
                                context, const AudioEntertainmentScreen());
                          },
                          path: AppAssets.audio_ic,
                          title: "Audios",
                          bgColor: AppColors.redcolor.withOpacity(0.1)),
                      EntertainmentMediaItem(
                          onTap: () {
                            pushScreen(
                                context, const AudioEntertainmentScreen());
                          },
                          path: AppAssets.videoes_IC,
                          title: "Videoes",
                          bgColor: AppColors.orangecolor.withOpacity(0.1)),
                    ]),
                  ),
                  Gap(10.h),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Row(children: [
                      EntertainmentMediaItem(
                          onTap: () {
                            pushScreen(
                                context, const DocumentEntertainmentScreen());
                          },
                          path: AppAssets.docs_IC,
                          title: "Document",
                          bgColor: AppColors.movecolor.withOpacity(0.1)),
                      EntertainmentMediaItem(
                          onTap: () {
                            pushScreen(
                                context, const FolderEntertainmentScreen());
                          },
                          path: AppAssets.folders_IC,
                          title: "Folder",
                          bgColor: AppColors.mintgreencolor.withOpacity(0.1)),
                    ]),
                  ),
                ],
              )),
        );
      },
    );
  }
}
