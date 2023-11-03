import 'package:bmi_app/utils.dart';
import 'package:bmi_app/view/HomeScreen.dart';
import 'package:bmi_app/view/ResultScreen.dart';
import 'package:flutter/material.dart';

class HomeController {

  late HomeScreenState _state;

  HomeController(this._state);

  void init() {
    _state.heightTxtController = TextEditingController();
    _state.weightTxtController = TextEditingController();
    if(_state.height > 0 && _state.weight > 0) {
      _state.heightTxtController.text = _state.height.toStringAsFixed(_state.height.truncateToDouble() == _state.height ? 0 : 1);
      _state.weightTxtController.text = _state.weight.toStringAsFixed(_state.weight.truncateToDouble() == _state.weight ? 0 : 1);
    }
  }

  void getResult() {
    if(_state.heightTxtController.text.isEmpty || _state.weightTxtController.text.isEmpty) {
      Utils.showToast("Chiều cao và cân nặng không được để trống", 0);
      return;
    }
    double height = double.parse(_state.heightTxtController.text);
    double weight = double.parse(_state.weightTxtController.text);
    if(height <= 0 || weight <= 0) {
      Utils.showToast("Chiều cao và cân nặng phải là số dương", 0);
      return;
    }

    HomeScreen.height = height;
    HomeScreen.weight = weight;
    ResultScreen.bmi = double.parse((weight / height / height * 10000).toStringAsFixed(1));
    Navigator.pushNamedAndRemoveUntil(_state.context, "/result", (route) => false);
  }

}