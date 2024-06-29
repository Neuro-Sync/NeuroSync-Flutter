import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../../core/app_cubit/app_cubit.dart';
import '../../../../../core/components/app_controller/app_controller.dart';
import '../../../../auth/screens/message_model.dart';
import '../../test_AI_model/test_navigation.dart';
import '../widgets/entertainment_components/appbar/headset_icon_component.dart';
import '../widgets/entertainment_components/appbar/network_icon_component.dart';
import '../widgets/entertainment_components/appbar/switch_component.dart';
import '../widgets/entertainment_components/body/files_component.dart';
import '../widgets/entertainment_components/body/images_component.dart';
import '../widgets/entertainment_components/body/notification_icon_component.dart';
import '../widgets/entertainment_components/body/pdf_files_component.dart';
import '../widgets/entertainment_components/body/record_component.dart';
import '../widgets/entertainment_components/body/title_text_component.dart';
import '../widgets/entertainment_components/body/videos_component.dart';

class DemoEnterTainmentScreen extends StatefulWidget {
  const DemoEnterTainmentScreen({super.key});

  @override
  State<DemoEnterTainmentScreen> createState() =>
      _DemoEnterTainmentScreenState();
}

class _DemoEnterTainmentScreenState extends State<DemoEnterTainmentScreen> {
  List<Message> messagesList = [];
  String? action;
  CollectionReference actions =
      FirebaseFirestore.instance.collection("actions");
  void push() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TestNavigationn(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, appstate) {
          AppCubit cubit = AppCubit.get(context);

          return StreamBuilder<QuerySnapshot>(
            builder: (context, snapshot) {
              if (snapshot.hasData) {
               
                messagesList = [];
                for (int i = 0; i < snapshot.data!.docs.length; i++) {
                  messagesList.add(Message.fromJson(snapshot.data!.docs[i]));
                  action = messagesList[0].action;
                  if (action == "move") {
                    log("moe");
                    final docRef = actions.doc("raOCFeu0DropsWyfUnHy");
                    docRef.update({
                      'action': "",
                      "created_at": DateTime.now(),
                    });
                    messagesList.clear();
                    action = null;
                    if (cubit.stepsCountIncontrller < 2 &&
                            appstate.isClicked == false ||
                        cubit.stepsCountIncontrller < 5 &&
                            appstate.isClicked == true) {
                      log("_____");
                      cubit.changeCurrentstep();
                    } else {
                      cubit.changeCurrentstep(value: 0);
                    }
                  } else if (messagesList[0].action == "execute") {
                    final docRef = actions.doc("raOCFeu0DropsWyfUnHy");

                    switch (cubit.stepsCountIncontrller) {
                      case 0:
                        if (appstate.isClicked == true) {
                          log("yes");
                          push();
                          docRef.update({
                            'action': "",
                          });
                        }

                        break;
                      case 1:
                        if (messagesList[0].action == "execute") {
                          if (appstate.isClicked == false) {
                            log("enable");
                            cubit.changeControllerAccesss(true);
                            AppCubit.get(context).change(
                                componentWidget: const PdfFilesComponent());
                            docRef.update({
                              'action': "",
                            });
                          } else {
                            log("right");
                            cubit.navigation(
                                context,
                                AppCubit.get(context).componentWidget,
                                AppCubit.get(context)
                                    .componentWidget
                                    .neighbors(context)["right"]);
                            docRef.update({
                              'action': "",
                            });
                          }
                        }
                        break;

                      case 2:
                        if (appstate.isClicked == false) {
                          log("do forward");
                        } else {
                          log("top");
                          //neighbors
                          cubit.navigation(
                              context,
                              AppCubit.get(context).componentWidget,
                              AppCubit.get(context)
                                  .componentWidget
                                  .neighbors(context)["top"]);
                          docRef.update({
                            'action': "",
                          });
                        }

                        break;
                      case 3:
                        log("left");
                        cubit.navigation(
                            context,
                            AppCubit.get(context).componentWidget,
                            AppCubit.get(context)
                                .componentWidget
                                .neighbors(context)["left"]);
                        docRef.update({
                          'action': "",
                        });

                        break;
                      case 4:
                        log("bottom");
                        cubit.navigation(
                            context,
                            AppCubit.get(context).componentWidget,
                            AppCubit.get(context)
                                .componentWidget
                                .neighbors(context)["bottom"]);
                        docRef.update({
                          'action': "",
                        });

                        break;
                      case 5:
                        log("disable");
                        if (appstate.isClicked == true) {
                          cubit.changeControllerAccesss(false);
                          docRef.update({
                            'action': "",
                          });
                        }
                        break;
                      default:
                    }
                  }
                }
              }

              return Column(
                children: [
                  Gap(15.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      children: [
                        const SwitchComponent(),
                        const Spacer(),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Networkiconcomponent(),
                            Gap(5.w),
                            HeadsetIconComponent(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gap(10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TitleTextComponent(),
                        NotificationIconItem(),
                      ],
                    ),
                  ),
                  Gap(10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [const PdfFilesComponent(), FilesComponent()],
                  ),
                  Gap(15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [const RecordComponent(), ImagesFilesComponent()],
                  ),
                  Gap(15.h),
                  const VideosFilesComponent(),
                  Gap(15.h),
                  const AppController(),
                ],
              );
            },
            stream: actions.snapshots(),
          );
        },
      ),
    ));
  }
}
