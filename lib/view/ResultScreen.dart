// ignore_for_file: file_names

import 'package:bmi_app/controller/ResultController.dart';
import 'package:bmi_app/view/widget/MyButton.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});
  
  @override
  State<StatefulWidget> createState() => ResultScreenState();
}

class ResultScreenState extends State<ResultScreen> {

  late ResultController _controller;
  double _height = 0.0;
  double _weight = 0.0;
  double _bmi = 0.0;

  @override
  void initState() {
    _controller = ResultController(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;
    _height = args["height"] ?? 0.0;
    _weight = args["weight"] ?? 0.0;
    _bmi = args["bmi"] ?? 0.0;
    return WillPopScope(
      onWillPop: () async {
        return false;
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
                            Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false, arguments: {
                              "height": _height,
                              "weight": _weight
                            });
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
                    _bmi.toString(),
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
                    _controller.getCategory(_bmi),
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
                    _controller.getShortAdvice(_bmi),
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
                    onPressed: (){},
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
