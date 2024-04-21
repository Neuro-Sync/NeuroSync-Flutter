// ignore_for_file: constant_identifier_names

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/app_text.dart';
import '../theming/app_font_family.dart';

// extension Sizer on num {
//      double get h => this * 812 / 100;

//      double get w => this * 375/ 100;

//     double get sp =>(((812+375)/2)*this)/100;

// }

enum MediaTypes { video, Image }

class AppUtil {
  static GlobalKey<NavigatorState>? navigatorKey;

  static launchURL(String url) async {
    url = url;
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // static Future<MediaTypes> getmediaType(String path) async {
  //   if (lookupMimeType(path.toString()).toString().startsWith('video/')) {
  //     return MediaTypes.video;
  //   } else {
  //     return MediaTypes.Image;
  //   }
  // }

  static Future<void> share(linkUrl) async {
    await FlutterShare.share(
      title: "مشاركة الرابط",
      linkUrl: linkUrl,
    );
  }

  static String getMessageTime(
      {required BuildContext context, required Timestamp time}) {
    DateTime date =
        DateTime.fromMillisecondsSinceEpoch(time.millisecondsSinceEpoch)
            .toLocal();
    final formattedTime = DateFormat('hh:mm a').format(date);
    return formattedTime;
  }

  static bool isLtr(context) =>
      EasyLocalization.of(context)?.currentLocale == const Locale('en')
          ? true
          : false;

  static TextDirection textDirection(context) =>
      EasyLocalization.of(context)?.currentLocale == const Locale('en')
          ? TextDirection.LTR
          : TextDirection.LTR;

  // static flushbarNotification(msg) {
  //   Alert(
  //     message: msg ?? '',
  //     shortDuration: false,
  //   ).show();
  // }

  static showSnackBar(context, String content, Color? bgcolor) {
    final snackBar = SnackBar(
      content: AppText(
        content,
        fontFamily: FontConstants.interMediumFont,
        color: Colors.white,
      ),
      duration: const Duration(seconds: 2),
      backgroundColor: bgcolor,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

void defaultShowToast({
  required String message,
  required ToastStates states,
}) =>
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: chooseToastColor(states),
        textColor: Colors.white,
        fontSize: 16.0);
Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERORR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}

enum ToastStates {
  SUCCESS,
  ERORR,
  WARNING,
}
