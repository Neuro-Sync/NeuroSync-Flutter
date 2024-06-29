// ignore_for_file: prefer_final_fields
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:cloud_firestore/cloud_firestore.dart' as fs;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:neurosync/features/home/screens/chat/chat_cubit/chat_cubit.dart';
import 'package:neurosync/features/home/screens/home/cubit/home_cubit.dart';
import 'dart:math' as math;

import '../../../../../../../core/components/app_text.dart';
import '../../../../../../../core/theming/app_colors.dart';

class AudioPlayer extends StatefulWidget {
  final audioPlayer;
  const AudioPlayer({
    Key? key,
    this.audioPlayer,
  }) : super(key: key);
  @override
  AudioPlayerState createState() => AudioPlayerState();
}

class AudioPlayerState extends State<AudioPlayer> {
  late StreamSubscription<void> _playerStateChangedSubscription;
  late StreamSubscription<Duration?> _durationChangedSubscription;
  late StreamSubscription<Duration> _positionChangedSubscription;
  late HomeCubit homeCubit;
  Duration? _position;
  Duration? _duration;
  DateTime? date;
  String? formattedTime;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    homeCubit = HomeCubit.get(context);
  }

  @override
  void initState() {
    DateTime now = DateTime.now();
    fs.Timestamp currentTime = fs.Timestamp.fromDate(now);

    date =
        DateTime.fromMillisecondsSinceEpoch(currentTime.millisecondsSinceEpoch)
            .toLocal();
    formattedTime = DateFormat('hh:mm a').format(date!);
    _playerStateChangedSubscription =
        widget.audioPlayer.onPlayerComplete.listen((state) async {
      await widget.audioPlayer.stop();
      setState(() {});
    });
    _positionChangedSubscription = widget.audioPlayer.onPositionChanged.listen(
      (position) => setState(() {
        _position = position;
      }),
    );
    _durationChangedSubscription = widget.audioPlayer.onDurationChanged.listen(
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
    widget.audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Gap(
          30.w,
        ),
        _buildControl(),
        Gap(
          30.w,
        ),
        _buildSlider(),
        Row(
          children: [
            SizedBox(
              width: 45.w,
            ),
            AppText(
              formattedTime!,
              color: Colors.white,
              fontSize: 12.sp,
            )
          ],
        ),
      ],
    );
  }

  Widget _buildDurationText() {
    String durationText = _position != null && _duration != null
        ? '${_formatDuration(_position!)}'
        : '';
    //: ${_formatDuration(_duration!)}

    return Text(
      durationText,
      style: TextStyle(
        color: Colors.white,
        fontSize: 13.sp,
      ),
    );
  }

  String _formatDuration(Duration duration) {
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  Widget _buildDurationTextStream() {
    ChatCubit chatCubit = ChatCubit.get(context);
    return StreamBuilder<Duration>(
      stream: widget.audioPlayer.onPositionChanged,
      builder: (context, snapshot) {
        final position = snapshot.data ?? Duration.zero;
        return _buildDurationText();
      },
    );
  }

  Widget _buildControl() {
    ChatCubit chatCubit = ChatCubit.get(context);

    Icon icon;
    if (widget.audioPlayer.state == PlayerState.playing) {
      icon = Icon(Icons.pause, color: Colors.white, size: 30.sp);
    } else {
      final theme = Theme.of(context);
      icon = Icon(Icons.play_arrow, color: Colors.white, size: 30.sp);
    }
    return ClipOval(
      child: Material(
        color: AppColors.blue,
        child: InkWell(
          child: Transform.rotate(
              angle: 0,
              child: SizedBox(width: 42.27.w, height: 42.27.h, child: icon)),
          onTap: () {
            if (widget.audioPlayer.state == PlayerState.playing) {
              widget.audioPlayer.pause();
            } else {
              widget.audioPlayer.play(AssetSource("audio/audio_sample.mp3"));
            }
            setState(() {});
          },
        ),
      ),
    );
  }

  Widget _buildSlider() {
    bool canSetValue = false;
    final duration = _duration;
    final position = _position;
    if (duration != null && position != null) {
      canSetValue = position.inMilliseconds > 0;
      canSetValue &= position.inMilliseconds < duration.inMilliseconds;
    }
    return Column(
      children: [
        Gap(20.h),
        SizedBox(
          height: 30.h,
          child: Slider(
            activeColor: Colors.white,
            inactiveColor: AppColors.grey,
            onChanged: (v) {
              if (duration != null) {
                final position = v * duration.inMilliseconds;
                widget.audioPlayer.audioPlayer
                    .seek(Duration(milliseconds: position.round()));
              }
            },
            value: canSetValue && duration != null && position != null
                ? position.inMilliseconds / duration.inMilliseconds
                : 0.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 150.w),
          child: Container(child: _buildDurationTextStream()),
        ),
      ],
    );
  }
}
