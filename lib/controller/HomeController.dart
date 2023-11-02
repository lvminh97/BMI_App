import 'package:bmi_app/utils.dart';
import 'package:bmi_app/view/HomeScreen.dart';
import 'package:flutter/material.dart';

class HomeController {

  late HomeScreenState _state;

  HomeController(this._state);

  void init() {
    _state.heightTxtController = TextEditingController();
    _state.weightTxtController = TextEditingController();
  }

  void getResult() {
    if(_state.heightTxtController.text.isEmpty || _state.weightTxtController.text.isEmpty) {
      Utils.showToast("Chiều cao và cân nặng không được để trống", 0);
      return;
    }
    double height = double.parse(_state.heightTxtController.text);
    double weight = double.parse(_state.weightTxtController.text);
    double bmi = weight / height / height * 10000;
    bmi = double.parse(bmi.toStringAsFixed(1));
    Navigator.pushNamedAndRemoveUntil(_state.context, "/result", (route) => false, arguments: {
      "height": height,
      "weight": weight,
      "bmi": bmi
    });
  }

}