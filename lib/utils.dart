import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';

class Utils{

  static Future<void> showToast(String msg, int length) async {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: length == 0 ? Toast.LENGTH_SHORT : Toast.LENGTH_LONG,
        timeInSecForIosWeb: 1,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.grey.shade700,
        textColor: Colors.white,
        fontSize: 14
    );
  }

  static Future<void> showWarning(BuildContext context, String title, String msg) async {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(title),
        titleTextStyle: TextStyle(
          height: title != "" ? 1 : double.minPositive,
          fontWeight: FontWeight.bold,
          fontSize: 16.sp,
          color: Colors.black
        ),
        content: Text(
          msg,
          style: TextStyle(
            fontSize: 14.sp
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "OK",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
                color: const Color.fromARGB(255, 32, 181, 81)
              ),
            )
          ),
        ],
      ),
    );
  }

}