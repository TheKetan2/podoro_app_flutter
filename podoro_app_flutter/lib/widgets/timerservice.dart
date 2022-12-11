import 'dart:async';

import 'package:flutter/material.dart';

class TimerService extends ChangeNotifier {
  late Timer timer;
  double currentDuration = 1500;
  double selectedTime = 1500;
  bool timerOn = false;
  int rounds = 0;
  int goals = 0;

  void selectTime(double seconds) {
    selectedTime = seconds;
    currentDuration = seconds;
    print(selectedTime.toString());
    notifyListeners();
  }

  void start() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      currentDuration--;
      if (currentDuration <= 0) {
        currentDuration = selectedTime;
        startTimer();
      }
      notifyListeners();
    });
  }

  void pause() {
    timer.cancel();
  }

  void startTimer() {
    print(timerOn);
    timerOn = !timerOn;
    timerOn ? start() : pause();
    notifyListeners();
  }
}
