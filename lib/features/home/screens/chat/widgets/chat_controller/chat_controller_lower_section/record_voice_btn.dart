import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_styles.dart';
import '../../../../../../preparing/widgets/child_component.dart';
import '../../../chat_cubit/chat_cubit.dart';

class RecordVoiceBtn extends StatelessWidget {
  const RecordVoiceBtn({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      ChatCubit.get(context).recordVoiceBtnNeighbors;

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
                              chatCubit.componentWidget, const RecordVoiceBtn())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: chatCubit.recordVoiceBtnNeighbors["bottom"],
            left: chatCubit.recordVoiceBtnNeighbors["left"],
            right: chatCubit.recordVoiceBtnNeighbors["right"],
            top: chatCubit.recordVoiceBtnNeighbors["top"],
            childContent: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  maximumSize: MaterialStateProperty.all(
                    Size(270.w, 66.h),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    Size(270.w, 66.h),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      side: BorderSide(color: AppColors.blue),
                      borderRadius: BorderRadius.circular(164.0.r),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      AppColors.chattopbarColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Record Voice   ",
                        style: TextStyles.font20PrimaryColorSemiBold),
                    Container(
                      height: 40.h,
                      width: 2.w,
                      color: AppColors.mainScreensTitlesBlueColor,
                    ),
                    Container(
                      width: 31.w,
                      height: 31.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.mainScreensTitlesBlueColor,
                      ),
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                        size: 20.sp,
                      ),
                    ),
                    Gap(1.5.w)
                  ],
                )),
          ),
        );
      },
    );
  }
}
