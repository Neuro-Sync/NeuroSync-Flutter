// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/app_cubit/app_cubit.dart';

class ChildBuildBlock extends StatelessWidget {
  final Widget childContent;
  dynamic top;
  dynamic right;
  dynamic bottom;
  dynamic left;
  dynamic selected;

  ChildBuildBlock({
    super.key,
    this.top,
    this.selected,
    this.right,
    this.bottom,
    this.left,
    required this.childContent,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      builder: (context, state) {
        return Container(child: childContent);
      },
      listener: (context, state) {},
    );
  }
}
