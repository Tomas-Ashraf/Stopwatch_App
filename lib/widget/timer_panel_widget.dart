// ignore_for_file: avoid_print, non_constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:stop_watch_app/widget/custom_button_widget.dart';
import 'package:stop_watch_app/widget/time_card_widget.dart';

class TimerPanelWidget extends StatefulWidget {
  const TimerPanelWidget({super.key});

  @override
  State<TimerPanelWidget> createState() => _TimerPanelWidgetState();
}

class _TimerPanelWidgetState extends State<TimerPanelWidget> {
  static Duration duration = const Duration();
  static Timer? timer;
  bool isCountdown = false;
  static const countdownDuration = Duration(minutes: 10);

  @override
  void initState() {
    super.initState();

    // startTimer();
    reset();
  }

  void reset() {
    if (isCountdown) {
      setState(() {
        duration = countdownDuration;
      });
    } else {
      setState(() {
        duration = const Duration();
      });
    }
  }

  void addTimer() {
    final increaseSeconds = isCountdown ? -1 : 1;

    setState(() {
      final seconds = duration.inSeconds + increaseSeconds;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  startTimer({bool resets = true}) {
    // if (resets) {
    //   reset();
    // }
    timer = Timer.periodic(
        const Duration(
          seconds: 1,
        ),
        (_) => addTimer());
  }

  void stopTimer({bool resets = true}) {
    if (resets) {
      reset();
    }
    setState(
      () => timer?.cancel(),
    );
  }

  @override
  Widget build(BuildContext context) {
    String twoNumbers(int t) => t.toString().padLeft(2, '0');

    final hours = twoNumbers(duration.inHours.remainder(60));

    final minutes = twoNumbers(duration.inMinutes.remainder(60));
    final seconds = twoNumbers(duration.inSeconds.remainder(60));
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  TimeCardWidget(timeUnit: hours, label: 'HOURS'),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  TimeCardWidget(timeUnit: minutes, label: 'MINUTES'),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  TimeCardWidget(timeUnit: seconds, label: 'SECONDS'),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 150.0,
          ),
          ActionButtonWidget(),
        ],
      ),
    );
  }

  bool isRunning = false;
  bool isStopped = false;
  final isCompleted = duration.inSeconds == 0;
  Widget ActionButtonWidget() {
    return isRunning || !isCompleted
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomButtonWidget(
                  onPressed: () {
                    isStopped = !isStopped;
                    if (isStopped) {
                      stopTimer(resets: false);
                    } else {
                      startTimer(resets: false);
                    }
                  },
                  buttonText: isStopped ? 'RESUME' : 'STOP'),
              const SizedBox(
                width: 12,
              ),
              CustomButtonWidget(
                  onPressed: () {
                    if (isStopped = true) {
                      isStopped = !isStopped;
                    }

                    isRunning = !isRunning;
                    stopTimer();
                  },
                  buttonText: 'CANCEL')
            ],
          )
        : CustomButtonWidget(
            onPressed: () {
              setState(() {
                isRunning = !isRunning;
                startTimer();

                print('object');
              });
            },
            buttonText: 'START');
  }
}
