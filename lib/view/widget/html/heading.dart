import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HtmlHeading extends StatelessWidget {

  final List<double> __fontSize = [0, 30.sp, 26.sp, 24.sp, 20.sp, 16.sp, 14.sp, 13.sp];

  String text = "";
  int level = 1;

  HtmlHeading({super.key, required this.text, this.level = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1.h, bottom: 1.5.h),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: __fontSize[level],
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
      ),
    );
  }
  
}