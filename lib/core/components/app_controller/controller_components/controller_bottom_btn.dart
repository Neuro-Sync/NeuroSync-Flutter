import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../features/preparing/widgets/child_component.dart';
import '../../../app_cubit/app_cubit.dart';

class ControllerBottombtn extends StatefulWidget {
  const ControllerBottombtn(
      {super.key, this.bottom, this.left, this.right, this.top, this.selected});
  final dynamic bottom;

  final dynamic left;

  final dynamic right;

  final dynamic top;

  final dynamic selected;
  @override
  State<ControllerBottombtn> createState() => _ControllerBottombtnState();
}

class _ControllerBottombtnState extends State<ControllerBottombtn> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, appstate) {
        AppCubit appCubit = AppCubit.get(context);
        return ChildBuildBlock(
          bottom: widget.bottom,
          left: widget.left ??
              ChildBuildBlock(childContent: const SizedBox.shrink()),
          right: widget.right ??
              ChildBuildBlock(childContent: const SizedBox.shrink()),
          selected: widget.selected,
          top: widget.top ??
              ChildBuildBlock(childContent: const SizedBox.shrink()),
          childContent: Container(
            width: 60.w,
            height: 30.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.sp),
                color: appCubit.stepsCountIncontrller == 4 &&
                        appstate.isClicked == true
                    ? Colors.amber
                    :
                            appstate.isClicked == false
                        ? Colors.grey
                        : Colors.blue),
            child: const Center(
              child: Text(
                "bottom",
                style: TextStyle(fontSize: 15.0),
              ),
            ),
          ),
        );
      },
    );
  }
}
