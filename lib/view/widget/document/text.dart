// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DocumentText extends StatelessWidget {

  String text = "";
  FontWeight fontWeight = FontWeight.normal;


  DocumentText({super.key, required this.text, this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0.1.h),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 13.sp,
          fontWeight: fontWeight,
          color: Colors.black
        ),
      ),
    );
  }

}