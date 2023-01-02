import 'package:flutter/material.dart';

class TimeProvider with ChangeNotifier {
  late bool _isDayTime;

  bool get isDayTime => _isDayTime;

  TimeProvider() {
    _updateTime();
  }

  void _updateTime() {
    final hour = DateTime.now().hour;
    _isDayTime = hour > 6 && hour < 18;
    notifyListeners();
  }
}
