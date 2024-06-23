import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../../core/resources/app_assets.dart';
import '../../../../../../../core/theming/app_colors.dart';
import '../../../../../../../core/theming/app_styles.dart';
import '../../../../../../preparing/widgets/child_component.dart';
import '../../../chat_cubit/chat_cubit.dart';

class SendLocationBtn extends StatelessWidget {
  const SendLocationBtn({super.key});
  Map<String, dynamic> neighbors(BuildContext context) =>
      ChatCubit.get(context).sendLocationBtnNeighbors;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        ChatCubit chatCubit = ChatCubit.get(context);
        return Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: chatCubit.componentWidget != null
                      ? chatCubit.compareWidgets(chatCubit.componentWidget,
                              const SendLocationBtn())
                          ? Colors.amber
                          : AppColors.primarycolor
                      : AppColors.primarycolor,
                  width: 2.sp)),
          child: ChildBuildBlock(
            bottom: chatCubit.sendLocationBtnNeighbors["bottom"],
            left: chatCubit.sendLocationBtnNeighbors["left"],
            right: chatCubit.sendLocationBtnNeighbors["right"],
            top: chatCubit.sendLocationBtnNeighbors["top"],
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
                    Text("Send Location",
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
                        color: AppColors.chatSendLocationbtnIconColor
                            .withOpacity(0.2),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.sp),
                        child: Image.asset(
                          AppAssets.send_IC,
                          height: 17.5.h,
                          width: 17.5.w,
                          color: AppColors.chatSendLocationbtnIconColor,
                        ),
                      ),
                    ),
                    Gap(1.w)
                  ],
                )),
          ),
        );
      },
    );
  }
}
