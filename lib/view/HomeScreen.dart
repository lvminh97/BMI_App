// ignore_for_file: file_names

import 'package:bmi_app/controller/HomeController.dart';
import 'package:bmi_app/view/widget/MyButton.dart';
import 'package:bmi_app/view/widget/MyTextField.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  late HomeController _controller;
  late TextEditingController heightTxtController, weightTxtController;

  @override
  void initState() {
    _controller = HomeController(this);
    _controller.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    if(args != null) {
      args as Map;
      if(args.containsKey("height") && args.containsKey("weight")) {
        heightTxtController.text = "${args["height"]}";
        weightTxtController.text = "${args["weight"]}";
      }
  }
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
                          "CHỈ SỐ BMI",
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
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 2.w, right: 10.w),
                      width: 40.w,
                      height: 45.h,
                      child: const FittedBox(
                        fit: BoxFit.fill,
                        child: Image(
                          image: AssetImage("assets/images/human.png"),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 40.w,
                            child: Text(
                              "Chiều cao (cm)",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 1.5.h, bottom: 5.h),
                            alignment: Alignment.center,
                            width: 40.w,
                            child: MyTextField("", heightTxtController, textSize: 12.sp, maxLines: 1, () => null, (str) => null, kbType: TextInputType.number),
                          ),
                          SizedBox(
                            width: 40.w,
                            child: Text(
                              "Cân nặng (kg)",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 1.5.h),
                            width: 40.w,
                            child: MyTextField("", weightTxtController, textSize: 12.sp, maxLines: 1, () => null, (str) => null, kbType: TextInputType.number),
                          )
                        ]
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: (MediaQuery.of(context).viewInsets.bottom == 0) ? 5.h : 2.h
                  ),
                  width: 85.w,
                  child: MyButton(
                    onPressed: _controller.getResult,
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.only(left: 8.w, top: 2.h, right: 8.w, bottom: 2.h),
                      backgroundColor: Colors.blue
                    ),
                    pressedStyle: TextButton.styleFrom(
                      padding: EdgeInsets.only(left: 8.w, top: 2.h, right: 8.w, bottom: 2.h),
                      backgroundColor: Colors.blue.shade300
                    ),
                    child: Text(
                      "Tính toán",
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
