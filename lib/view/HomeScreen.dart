// ignore_for_file: file_names, no_logic_in_create_state

import 'package:bmi_app/controller/HomeController.dart';
import 'package:bmi_app/language.dart';
import 'package:bmi_app/view/widget/MyButton.dart';
import 'package:bmi_app/view/widget/MyTextField.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {

  static double height = 0, weight = 0;

  const HomeScreen({super.key});
  
  @override
  State<StatefulWidget> createState() => HomeScreenState(height, weight);
}

class HomeScreenState extends State<HomeScreen> {

  static List<Map<String, String>> strings = [
    {"vi": "Chỉ số BMI", "en": "BMI index"},  // 0
    {"vi": "Chiều cao (cm)", "en": "Height (cm)"},  // 1
    {"vi": "Cân nặng (kg)", "en": "Weight (kg)"},  // 2
    {"vi": "Tính toán", "en": "Compute"},  // 3
  ];

  late HomeController _controller;
  late TextEditingController heightTxtController, weightTxtController;
  double height = 0, weight = 0;

  HomeScreenState(this.height, this.weight);

  @override
  void initState() {
    _controller = HomeController(this);
    _controller.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                          strings[0][Language.cur]!.toUpperCase(),
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
                          onPressed: () async {
                            await Language.toggle();
                            setState(() {});
                          },
                          pressedStyle: TextButton.styleFrom(
                            backgroundColor: Colors.blue.shade100
                          ),
                          child: Image(
                            image: AssetImage("assets/images/${Language.cur == "vi" ? "vietnam_flag" : "england_flag"}.png"),
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
                              strings[1][Language.cur]!,
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
                              strings[2][Language.cur]!,
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
                      strings[3][Language.cur]!,
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
