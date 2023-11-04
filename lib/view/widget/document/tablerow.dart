// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DocumentTableRow extends StatelessWidget{

  final Map<String, TextAlign> __textAlign = {
    "<<left>>": TextAlign.left,
    "<<right>>": TextAlign.right,
    "<<center>>": TextAlign.center,
    "<<justify>>": TextAlign.justify
  };
  final Map<String, Alignment?> __alignment = {
    "<<left>>": Alignment.centerLeft,
    "<<right>>": Alignment.centerRight,
    "<<center>>": Alignment.center,
    "<<justify>>": Alignment.centerLeft
  };

  List<int> colWidth = [];
  List<String> data = [];
  bool isLastRow = false;

  DocumentTableRow({super.key, required this.colWidth, required this.data, this.isLastRow = false});

  String __getTextOnly(String value) {
    int lastIndexOfFormat = value.lastIndexOf(">>");
    if(lastIndexOfFormat == -1) {
      return value;
    } else {
      return value.substring(lastIndexOfFormat + 2);
    }
  }

  TextAlign __getAlign(String value) {
    for(var align in __textAlign.keys) {
      if(value.contains(align)) {
        return __textAlign[align]!;
      }
    }
    return TextAlign.left;
  }

  Alignment? __getAlignment(String value) {
    for(var align in __textAlign.keys) {
      if(value.contains(align)) {
        return __alignment[align]!;
      }
    }
    return Alignment.centerLeft;
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for(var c = 0; c < data.length; c++)
            Expanded(
              flex: colWidth[c],
              child: Container(
                padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
                alignment: __getAlignment(data[c]),
                decoration: BoxDecoration(
                  border: Border(
                    left: const BorderSide(
                      color: Colors.black,
                      width: 1.0
                    ),
                    top: (data[c].contains("<<merge>>")) ?  BorderSide.none
                    : const BorderSide(
                      color: Colors.black,
                      width: 1.0
                    ),
                    right: c == data.length - 1 ? const BorderSide(
                      color: Colors.black,
                      width: 1.0
                    )
                    : BorderSide.none,
                    bottom: isLastRow ? const BorderSide(
                      color: Colors.black,
                      width: 1.0
                    )
                    : BorderSide.none
                  )
                ),
                child: Text(
                  __getTextOnly(data[c]),
                  textAlign: __getAlign(data[c]),
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: data[c].contains("<<bold>>") ? FontWeight.bold : FontWeight.normal,
                    color: Colors.black
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}