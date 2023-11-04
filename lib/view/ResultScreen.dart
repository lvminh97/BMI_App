// ignore_for_file: file_names, no_logic_in_create_state

import 'package:bmi_app/controller/ResultController.dart';
import 'package:bmi_app/view/widget/MyButton.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ResultScreen extends StatefulWidget {
  static double bmi = 0;

  const ResultScreen({super.key});
  
  @override
  State<StatefulWidget> createState() => ResultScreenState();
}

class ResultScreenState extends State<ResultScreen> {

  late ResultController _controller;

  @override
  void initState() {
    _controller = ResultController(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
        return true;
      },
      child: Scaffold(
        body: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: (MediaQuery.of(context).viewInsets.bottom == 0) ? 7.5.h : 0
                ),
                SizedBox(
                  width: 90.w,
                  height: (MediaQuery.of(context).viewInsets.bottom == 0) ? 8.h : 0,
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "KẾT QUẢ",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        width: 15.w,
                        height: 8.h,
                        child: MyButton(
                          onPressed: () {},
                          pressedStyle: TextButton.styleFrom(
                            backgroundColor: Colors.blue.shade100
                          ),
                          child: const Image(
                            image: AssetImage("assets/images/vietnam_flag.png"),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        width: 15.w,
                        height: 8.h,
                        child: MyButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
                          },
                          pressedStyle: TextButton.styleFrom(
                            backgroundColor: Colors.blue.shade100
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            opticalSize: 10.0,
                            color: Colors.blue
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.h),
                  child: Text(
                    ResultScreen.bmi.toString(),
                    style: TextStyle(
                      fontSize: 80.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2.h),
                  child: Text(
                    _controller.getCategory(ResultScreen.bmi),
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 3.h),
                  width: 90.w,
                  alignment: Alignment.center,
                  child: Text(
                    _controller.getShortAdvice(ResultScreen.bmi),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: (MediaQuery.of(context).viewInsets.bottom == 0) ? 5.h : 2.h
                  ),
                  width: 85.w,
                  child: MyButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context, "/recommend", (route) => false);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.only(left: 8.w, top: 2.h, right: 8.w, bottom: 2.h),
                      backgroundColor: Colors.blue
                    ),
                    pressedStyle: TextButton.styleFrom(
                      padding: EdgeInsets.only(left: 8.w, top: 2.h, right: 8.w, bottom: 2.h),
                      backgroundColor: Colors.blue.shade300
                    ),
                    child: Text(
                      "Xem lời khuyên",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp
                      ),
                    ),
                  )
                )
              ],
            )
          )
        ),
      )
    );
  }
}
