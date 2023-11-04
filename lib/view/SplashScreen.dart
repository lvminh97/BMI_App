// ignore_for_file: file_names, must_be_immutable

import 'package:bmi_app/language.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Language.load();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
    });
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          body: DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 50.w,
                    child: const Image(
                      image: AssetImage("assets/images/bmi_icon.png"),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}