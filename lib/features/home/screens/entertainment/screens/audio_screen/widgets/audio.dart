// ignore_for_file: prefer_final_fields
import 'dart:async';
import 'package:audioplayers/audioplayers.dart' as ap;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neurosync/core/resources/app_assets.dart';
import 'dart:math' as math;

import '../../../../../../../core/components/app_text.dart';
import '../../../../../../../core/theming/app_colors.dart';

class AudioPlayer extends StatefulWidget {
  final String source;
  final int senderId;
  final Timestamp messagetime;

  const AudioPlayer({
    Key? key,
    required this.source,
    required this.messagetime,
    required this.senderId,
  }) : super(key: key);
  @override
  AudioPlayerState createState() => AudioPlayerState();
}

class AudioPlayerState extends State<AudioPlayer> {
  static double _controlSize = 26.sp;
  final _audioPlayer = ap.AudioPlayer();
  late StreamSubscription<void> _playerStateChangedSubscription;
  late StreamSubscription<Duration?> _durationChangedSubscription;
  late StreamSubscription<Duration> _positionChangedSubscription;
  Duration? _position;
  Duration? _duration;
  DateTime? date;
  String? formattedTime;
  @override
  void initState() {
    date = DateTime.fromMillisecondsSinceEpoch(
            widget.messagetime.millisecondsSinceEpoch)
        .toLocal();
    formattedTime = DateFormat('hh:mm a').format(date!);
    _playerStateChangedSubscription =
        _audioPlayer.onPlayerComplete.listen((state) async {
      await stop();
      setState(() {});
    });
    _positionChangedSubscription = _audioPlayer.onPositionChanged.listen(
      (position) => setState(() {
        _position = position;
      }),
    );
    _durationChangedSubscription = _audioPlayer.onDurationChanged.listen(
      (duration) => setState(() {
        _duration = duration;
      }),
    );
    super.initState();
  }

  @override
  void dispose() {
    _playerStateChangedSubscription.cancel();
    _positionChangedSubscription.cancel();
    _durationChangedSubscription.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 0.7.w),
          child: Container(
            width: 85.w,
            decoration: BoxDecoration(
                color: AppColors.primarycolor,
                borderRadius: BorderRadius.circular(10.sp)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 2.w,
                ),
                _buildControl(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(child: _buildSlider(60.w)),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5.5.w),
                          child: Container(child: _buildDurationTextStream()),
                        ),
                        SizedBox(
                          width: 45.w,
                        ),
                        AppText(
                          formattedTime!,
                          color: Colors.grey,
                          fontSize: 9.sp,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDurationText() {
    String durationText = _position != null && _duration != null
        ? '${_formatDuration(_position!)}'
        : '';
    //: ${_formatDuration(_duration!)}

    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Text(
        durationText,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 9.sp,
        ),
      ),
    );
  }

  String _formatDuration(Duration duration) {
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  Widget _buildDurationTextStream() {
    return StreamBuilder<Duration>(
      stream: _audioPlayer.onPositionChanged,
      builder: (context, snapshot) {
        final position = snapshot.data ?? Duration.zero;
        return _buildDurationText();
      },
    );
  }

  Widget _buildControl() {
    Icon icon;
    Color color;
    if (_audioPlayer.state == ap.PlayerState.playing) {
      icon = Icon(Icons.pause, color: AppColors.primarycolor, size: 20.sp);
    } else {
      final theme = Theme.of(context);
      icon = Icon(Icons.play_arrow, color: AppColors.primarycolor, size: 20.sp);
    }
    return ClipOval(
      child: Material(
        color: AppColors.primarycolor,
        child: InkWell(
          child: Transform.rotate(
              angle: 0,
              child: SizedBox(width: 30.sp, height: 30.sp, child: icon)),
          onTap: () {
            if (_audioPlayer.state == ap.PlayerState.playing) {
              pause();
            } else {
              play();
            }
            setState(() {});
          },
        ),
      ),
    );
  }

  Widget _buildSlider(double widgetWidth) {
    bool canSetValue = false;
    final duration = _duration;
    final position = _position;
    if (duration != null && position != null) {
      canSetValue = position.inMilliseconds > 0;
      canSetValue &= position.inMilliseconds < duration.inMilliseconds;
    }
    double width = widgetWidth;
    return SizedBox(
      // color: Colors.brown,
      width: width,
      height: 4.h,
      child: Slider(
        activeColor: AppColors.primarycolor,
        inactiveColor: AppColors.grey,
        onChanged: (v) {
          if (duration != null) {
            final position = v * duration.inMilliseconds;
            _audioPlayer.seek(Duration(milliseconds: position.round()));
          }
        },
        value: canSetValue && duration != null && position != null
            ? position.inMilliseconds / duration.inMilliseconds
            : 0.0,
      ),
    );
  }

  Future<void> play() {
    return _audioPlayer.play(ap.UrlSource(AppAssets.audio_sample));
  }

  Future<void> pause() => _audioPlayer.pause();
  Future<void> stop() => _audioPlayer.stop();
}
