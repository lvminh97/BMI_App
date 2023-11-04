// ignore_for_file: file_names, no_logic_in_create_state

import 'package:bmi_app/controller/ResultController.dart';
import 'package:bmi_app/language.dart';
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

  static List<Map<String, String>> strings = [
    {"vi": "Kết quả", "en": "Result"},  // 0
    {"vi": "Xem lời khuyên", "en": "View advice"},  // 1
    {"vi": "Thiếu cân", "en": "Underweight"},  // 2
    {"vi": "Bình thường", "en": "Normal"},  // 3
    {"vi": "Thừa cân", "en": "Overweight"}, // 4
    {"vi": "Béo phì", "en": "Obesity"}, // 5
    {"vi": "Bạn nên xem lại chế độ ăn uống hoặc siêng ăn thêm bạn nhé", "en": "You should review your diet or eat more diligently"}, // 6
    {"vi": "Bạn nên tiếp tục duy trì nhé", "en": "You should continue to maintain it"}, // 7
    {"vi": "Bạn đang thừa cân rồi, điều chỉnh chế độ ăn uống và luyện tập chăm chỉ hơn nhé", "en": "You are overweight , adjust your diet and exercise harder"},  // 8
    {"vi": "Bạn đang trong nhóm này thì khá nguy hiểm nhé. Bạn cần xem lại chế độ dinh dưỡng, tham khảo ý kiến của bác sĩ cũng như cần thuê riêng một bạn PT để hướng dẫn cách tập luyện sao cho hiệu quả nhất",
      "en": "If you are in this group, it is quite dangerous. You need to review your nutrition regimen, consult your doctor as well as hire a personal PT to guide you on how to exercise most effectively"},  // 9
    {}  
  ];

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
                    strings[_controller.getCategory(ResultScreen.bmi)][Language.cur]!,
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
                  height: 20.h,
                  alignment: Alignment.topCenter,
                  child: Text(
                    strings[_controller.getShortAdvice(ResultScreen.bmi)][Language.cur]!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 2.h),
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
                      strings[1][Language.cur]!,
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
