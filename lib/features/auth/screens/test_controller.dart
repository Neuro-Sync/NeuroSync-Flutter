// // ignore_for_file: use_build_context_synchronously, must_be_immutable

// import 'dart:developer';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:gap/gap.dart';

// import 'package:neurosync/core/utils/utilities.dart';
// import 'package:neurosync/features/auth/screens/message_model.dart';
// import 'package:neurosync/features/preparing/screens/test_pointing_components.dart';

// import '../../../../../../../core/components/app_text.dart';

// import 'package:neurosync/core/resources/app_colors.dart';

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({
//     super.key,
//   });

//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   TextEditingController? chatcontroller = TextEditingController();

//   List<Message> messagesList = [];

//   @override
//   void initState() {
//     super.initState();
//   }

//   CollectionReference actions =
//       FirebaseFirestore.instance.collection("actions");

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Gap(100.h),
          
//             Gap(32.h),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 10.w),
//               child: NavigationSystem(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
