// ignore_for_file: file_names

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

  @override
  void initState() {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 2.w, right: 10.w),
                      width: 40.w,
                      height: 50.h,
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
                            child: MyTextField("", TextEditingController(), textSize: 12.sp, maxLines: 1, () => null, (str) => null, kbType: TextInputType.number),
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
                            child: MyTextField("", TextEditingController(), textSize: 12.sp, maxLines: 1, () => null, (str) => null, kbType: TextInputType.number),
                          )
                        ]
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.h),
                  width: 85.w,
                  child: MyButton(
                    onPressed: () {
                      
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.only(left: 8.w, top: 1.5.h, right: 8.w, bottom: 1.5.h),
                      backgroundColor: Colors.blue
                    ),
                    child: Text(
                      "Tính toán",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp
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
