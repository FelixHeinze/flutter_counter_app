import 'package:flutter/material.dart';


  int resetCounter(int value) {
      value = 0;
    return value;
  }
  int incrementCounterBy(int value, int incrementValue) {
      value += incrementValue;
    return value;
  }
  int decrementCounterBy(int value, int decrementValue) {
      value -= decrementValue;
    return value;
  }
  int multiplyCounterBy(int value, int multiplyValue) {
       value *= multiplyValue;
    return value;
  }
int halfCounter(int value) {
      value ~/= 2;
    return value;
  }
