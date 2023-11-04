// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:bmi_app/view/widget/document/tablerow.dart';

class DocumentTable extends StatelessWidget {

  List<DocumentTableRow> data = [];
  int row = 0, col = 0;

  DocumentTable({super.key, required this.data, required this.row, required this.col});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1.h, bottom: 1.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for(var r = 0; r < data.length; r++) data[r]
        ],
      ),
    );
  }
}