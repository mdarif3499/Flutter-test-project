import 'dart:async';

import 'package:flutter/material.dart';

class CommonTimer extends StatefulWidget {
  final VoidCallback _whenTimerComplete;
  final int startTime;
  const CommonTimer({
    required VoidCallback whenTimerComplete,
    super.key,
    this.startTime = 20,
  }) : _whenTimerComplete = whenTimerComplete;

  @override
  State<CommonTimer> createState() => _CommonTimerState();
}

class _CommonTimerState extends State<CommonTimer> {
  late Timer _timer;
  late int _start;
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
          widget._whenTimerComplete();
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    _start = widget.startTime;
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "${_start < 10 ? "0" : ""}$_start:00",
      style: const TextStyle(
          fontWeight: FontWeight.w500,
          //color: AppPalette.BLACK_TINT_1,
          fontSize: 15),
    );
  }
}
