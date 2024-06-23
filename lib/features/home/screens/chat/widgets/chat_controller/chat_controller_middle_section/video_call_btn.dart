import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_styles.dart';
import '../../../../../../preparing/widgets/child_component.dart';
import '../../../chat_cubit/chat_cubit.dart';

class VideoCallBtn extends StatelessWidget {
  const VideoCallBtn({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      ChatCubit.get(context).VideoCallBtnNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        ChatCubit chatCubit = ChatCubit.get(context);
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: chatCubit.componentWidget != null
                      ? chatCubit.compareWidgets(
                              chatCubit.componentWidget, const VideoCallBtn())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: chatCubit.VideoCallBtnNeighbors["bottom"],
            left: chatCubit.VideoCallBtnNeighbors["left"],
            right: chatCubit.VideoCallBtnNeighbors["right"],
            top: chatCubit.VideoCallBtnNeighbors["top"],
            childContent: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                    Size(155.w, 51.h),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          164.0.r), // Replace 10.0 with your desired radius
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      AppColors.chattopbarColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 34.h,
                      width: 34.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.blue,
                          ),
                          shape: BoxShape.circle,
                          color: Colors.white),
                      child: Icon(
                        Icons.video_call,
                        color: AppColors.mainScreensTitlesBlueColor,
                        size: 20.sp,
                      ),
                    ),
                    Gap(13.w),
                    Text(
                      "video Call",
                      style: TextStyles.font20PrimaryColorSemiBold
                          .copyWith(fontSize: 16.sp),
                    ),
                  ],
                )),
          ),
        );
      },
    );
  }
}
