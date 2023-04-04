// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WatchModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WatchModel on _WatchModelBase, Store {
  late final _$buttonStatusAtom =
      Atom(name: '_WatchModelBase.buttonStatus', context: context);

  @override
  String get buttonStatus {
    _$buttonStatusAtom.reportRead();
    return super.buttonStatus;
  }

  @override
  set buttonStatus(String value) {
    _$buttonStatusAtom.reportWrite(value, super.buttonStatus, () {
      super.buttonStatus = value;
    });
  }

  late final _$minuteAtom =
      Atom(name: '_WatchModelBase.minute', context: context);

  @override
  int get minute {
    _$minuteAtom.reportRead();
    return super.minute;
  }

  @override
  set minute(int value) {
    _$minuteAtom.reportWrite(value, super.minute, () {
      super.minute = value;
    });
  }

  late final _$secondAtom =
      Atom(name: '_WatchModelBase.second', context: context);

  @override
  int get second {
    _$secondAtom.reportRead();
    return super.second;
  }

  @override
  set second(int value) {
    _$secondAtom.reportWrite(value, super.second, () {
      super.second = value;
    });
  }

  late final _$timeAtom = Atom(name: '_WatchModelBase.time', context: context);

  @override
  Timer? get time {
    _$timeAtom.reportRead();
    return super.time;
  }

  @override
  set time(Timer? value) {
    _$timeAtom.reportWrite(value, super.time, () {
      super.time = value;
    });
  }

  late final _$_WatchModelBaseActionController =
      ActionController(name: '_WatchModelBase', context: context);

  @override
  dynamic setTimer({required Timer time}) {
    final _$actionInfo = _$_WatchModelBaseActionController.startAction(
        name: '_WatchModelBase.setTimer');
    try {
      return super.setTimer(time: time);
    } finally {
      _$_WatchModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setButtonStatus({required String buttonStatus}) {
    final _$actionInfo = _$_WatchModelBaseActionController.startAction(
        name: '_WatchModelBase.setButtonStatus');
    try {
      return super.setButtonStatus(buttonStatus: buttonStatus);
    } finally {
      _$_WatchModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
buttonStatus: ${buttonStatus},
minute: ${minute},
second: ${second},
time: ${time}
    ''';
  }
}
