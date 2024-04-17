import 'package:flutter/widgets.dart';
import 'package:neurosync/features/preparing/screens/demo/widgets/entertainment_components/body/title_text_component.dart';
import 'entertainment_components/appbar/headset_icon_component.dart';
import 'entertainment_components/appbar/network_icon_component.dart';
import 'entertainment_components/appbar/switch_component.dart';
import 'entertainment_components/body/files_component.dart';
import 'entertainment_components/body/images_component.dart';
import 'entertainment_components/body/notification_icon_component.dart';
import 'entertainment_components/body/pdf_files_component.dart';
import 'entertainment_components/body/record_component.dart';
import 'entertainment_components/body/videos_component.dart';

class EnterTainMentNeighbours {
  //appbar
  static Map<String, dynamic> headsetIconNeighbors = {
    "bottom": NotificationIconItem(),
    "left": Networkiconcomponent(),
    "right": const SizedBox.shrink(),
    "top": const SizedBox.shrink(),
  };
  static Map<String, dynamic> networkIconNeighbors = {
    "bottom": NotificationIconItem(),
    "left": const SwitchComponent(),
    "right": HeadsetIconComponent(),
    "top": const SizedBox.shrink(),
  };
  static Map<String, dynamic> switchIconNeighbors = {
    "bottom": NotificationIconItem(),
    "left": const SizedBox.shrink(),
    "right": Networkiconcomponent(),
    "top": const SizedBox.shrink(),
  };

  ///body//////

  static Map<String, dynamic> filesNeighbors = {
    "bottom": ImagesFilesComponent(),
    "left": const PdfFilesComponent(),
    "right": const SizedBox.shrink(),
    "top": NotificationIconItem(),
  };

  static Map<String, dynamic> videosNeighbors = {
    "bottom": const RecordComponent(),
    "left": const SizedBox.shrink(),
    "right": const SizedBox.shrink(),
    "top": ImagesFilesComponent(),
  };

  static Map<String, dynamic> titleNeighbors = {
    "bottom": const PdfFilesComponent(),
    "left": const SizedBox.shrink(),
    "right": NotificationIconItem(),
    "top": const SwitchComponent(),
  };

  static Map<String, dynamic> recordNeighbors = {
    "bottom": const VideosFilesComponent(),
    "left": const SizedBox.shrink(),
    "right": ImagesFilesComponent(),
    "top": const PdfFilesComponent(),
  };

  static Map<String, dynamic> pdfNeighbors = {
    "bottom": const VideosFilesComponent(),
    "left": const SizedBox.shrink(),
    "right": FilesComponent(),
    "top": const TitleTextComponent(),
  };

  static Map<String, dynamic> notificationIconNeighbors = {
    "bottom": FilesComponent(),
    "left": const TitleTextComponent(),
    "right": const SizedBox.shrink(),
    "top": HeadsetIconComponent(),
  };
  static Map<String, dynamic> imagesNeighbors = {
    "bottom": const VideosFilesComponent(),
    "left": const RecordComponent(),
    "right": const SizedBox.shrink(),
    "top": FilesComponent(),
  };
}
