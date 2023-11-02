import 'package:bmi_app/view/HomeScreen.dart';
import 'package:bmi_app/view/ResultScreen.dart';
import 'package:bmi_app/view/SplashScreen.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static final Map<String, Widget Function(BuildContext)> _routes = {
    "/splash": (context) => const SplashScreen(),
    "/home": (context) => const HomeScreen(),
    "/result": (context) => const ResultScreen()
  };
  static const String _init = "/splash";

  static Map<String, Widget Function(BuildContext)> getRoutes(){
    return _routes;
  }

  static String getInit(){
    return _init;
  }
}