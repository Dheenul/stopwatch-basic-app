import 'dart:async';
import 'package:stopwatch/WatchModel.dart';

class WatchVM extends WatchModel {
  WatchVM() {
    setButtonStatus(buttonStatus: 'start');
    setMinute(minute: 0);
    setSecond(second: 0);
  }
  onClickOfStat() {
    buttonCounter++;
    if (buttonCounter % 2 != 0) {
      setButtonStatus(buttonStatus: 'Pause');
      // buttonStatus = 'Pause';
      onStart();
    } else {
      setButtonStatus(buttonStatus: 'Start');
      // buttonStatus = 'Start';
      onPause();
    }
    // print(buttonCounter);
    // if (second >= 1) {
    //   buttonStatus = 'pause';
    //   pauseStatus = true;
    // }
  }

  onStart() {
    watch.start();
    setTimer(
        time: Timer.periodic(Duration(seconds: 1), (timer) {
      if (timerMinutes == 59) {
        timerSeconds.add(0);
      }
      var minutes = Duration(milliseconds: watch.elapsedMilliseconds);
      timerMinutes.add(minutes.inMinutes);
      var seconds = Duration(milliseconds: watch.elapsedMilliseconds);
      timerSeconds.add(seconds.inSeconds);
    }));

    // setTimer(
    //     time: Timer.periodic(Duration(seconds: 1), (timer) {
    //   second++;
    //   if (setSecond(second: second) == 59) {
    //     setSecond(second: 0);
    //     minute++;
    //   }
    //   if (setMinute(minute: minute) == 99) {
    //     setSecond(second: 0);
    //     setMinute(minute: 0);
    //   }
    // if (second == 59) {
    //   second = 0;
    //   minute++;
    // }
    // if (minute == 99) {
    //   second = 0;
    //   minute = 0;
    // }
    // }));
  }

  onPause() {
    time!.cancel();
    watch.stop();
  }
}
