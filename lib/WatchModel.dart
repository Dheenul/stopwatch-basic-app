import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
part 'WatchModel.g.dart';

class WatchModel = _WatchModelBase with _$WatchModel;

abstract class _WatchModelBase with Store {
  StreamController<int> timerMinutes = StreamController();
  StreamController<int> timerSeconds = StreamController();
  Stopwatch watch = Stopwatch();
  int buttonCounter = 0;
  @observable
  String buttonStatus = "";
  @observable
  int minute = 0;
  @observable
  int second = 0;
  @observable
  Timer? time;
  @action
  setTimer({required Timer time}) => this.time = time;
  @action
  setButtonStatus({required String buttonStatus}) =>
      this.buttonStatus = buttonStatus;
  setMinute({required int minute}) => this.minute = minute;
  setSecond({required int second}) => this.second = second;
}
