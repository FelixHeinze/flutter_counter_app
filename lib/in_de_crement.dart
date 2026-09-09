import 'package:flutter/material.dart';
var _counter = 0;
void setState(Null Function() param0) {}

  void resetCounter() {
    setState(() {
      _counter = 0;
    });
  }
  void incrementCounterBy(int value) {
    setState(() {
      _counter += value;
    });
  }
  void decrementCounterBy(int value) {
    setState(() {
      _counter -= value;
    });
  }
  void multiplyCounterBy(int value) {
    setState(() {
      _counter *= value;
    });
  }
void halfCounter() {
    setState(() {
      _counter ~/= 2;
    });
  }
