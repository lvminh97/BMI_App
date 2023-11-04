// ignore_for_file: unused_field

import 'package:bmi_app/view/ResultScreen.dart';

class ResultController {

  late ResultScreenState _state;

  ResultController(this._state);

  int getCategory(double bmi) {
    if(bmi < 18.5) {
      return 2;
    }
    else if(bmi <= 24.9) {
      return 3;
    }
    else if(bmi <= 29.9) {
      return 4;
    }
    else {
      return 5;
    }
  }

  int getShortAdvice(double bmi) {
    if(bmi < 18.5) {
      return 6;
    }
    else if(bmi <= 24.9) {
      return 7;
    }
    else if(bmi <= 29.9) {
      return 8;
    }
    else {
      return 9;
    }
  }
}