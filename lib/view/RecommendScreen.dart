// ignore_for_file: file_names

import 'package:bmi_app/controller/RecommendController.dart';
import 'package:bmi_app/view/widget/MyButton.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RecommendScreen extends StatefulWidget {
  const RecommendScreen({super.key});
  
  @override
  State<StatefulWidget> createState() => RecommendScreenState();
}

class RecommendScreenState extends State<RecommendScreen> {

  late RecommendController _controller;

  @override
  void initState() {
    _controller = RecommendController(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushNamedAndRemoveUntil(context, "/result", (route) => false);
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
                          "LỜI KHUYÊN",
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
                            Navigator.pushNamedAndRemoveUntil(context, "/result", (route) => false);
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
                Flexible(
                  child: Scrollbar(
                    child: Container(
                      margin: EdgeInsets.only(top: 3.h),
                      padding: EdgeInsets.fromLTRB(4.w, 0, 4.w, 2.h),
                      width: 98.w,
                      child: SingleChildScrollView(
                        child: Column(
                          children: _controller.getRecommendation(),
                        )
                      ),
                    ),
                  ),
                )
              ],
            )
          )
        ),
      )
    );
  }
}
