import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../../../core/components/app_text.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_font_family.dart';
import '../../cubit/entertainment_cubit.dart';
import 'media_audios_item.dart';
import 'media_docs_item.dart';
import 'media_folders_item.dart';
import 'media_images_item.dart';
import 'media_videoes_item.dart';

class GeneralEntertainmentContent extends StatelessWidget {
  const GeneralEntertainmentContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EntertainmentCubit, EntertainmentState>(
      builder: (context, state) {
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
                    child: const Row(children: [
                      EntertainmentMediaItemImage(),
                      EntertainmentMediaItemAudioes(),
                      EntertainmentMediaItemVideoes(),
                    ]),
                  ),
                  Gap(10.h),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: const Row(children: [
                      EntertainmentMediaItemDocs(),
                      EntertainmentMediaItemFolders(),
                    ]),
                  ),
                ],
              )),
        );
      },
    );
  }
}
