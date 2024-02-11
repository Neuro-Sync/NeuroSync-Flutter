import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget specialCard({Widget? cardChild}) {
  return Container(
      // margin: const EdgeInsets.all(8),
      height: .68.h * 100,
      padding: const EdgeInsets.all(8),
      width: .9.w * 100,
      decoration: _boxdecoration(),
      alignment: Alignment.center,
      child: cardChild);
}

Decoration _boxdecoration() {
  return const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 5.0), //(x,y)
          blurRadius: 10.0,
        ),
      ],
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)));
}
