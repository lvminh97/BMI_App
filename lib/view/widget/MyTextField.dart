// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyTextField extends StatelessWidget {
  final ValueNotifier<bool> _showHiddenNtf = ValueNotifier(false);
  double _textSize = 0;
  String _hintText = "";
  bool _isEdit = true;
  TextInputType _kbType = TextInputType.text;
  int _maxLength = 0;
  int _maxLines = 9999;
  TextAlign _textAlign = TextAlign.left;
  Widget? _prefixIcon, _suffixIcon;
  late TextEditingController _controller;
  late Function() _onTap;
  late Function(String) _onChange;

  MyTextField(String hintText, TextEditingController controller, Function() onTap, Function(String) onChange,
  {Key? key, double textSize = 18, bool isEdit = true, TextInputType kbType = TextInputType.text,
      int maxLength = 99999999, int maxLines = 9999, TextAlign textAlign = TextAlign.left, Widget? prefixIcon, Widget? suffixIcon})
  : super(key: key){
    _textSize = textSize;
    _hintText = hintText;
    _isEdit = isEdit;
    _kbType = kbType;
    _maxLength = maxLength;
    _maxLines = maxLines;
    _textAlign = textAlign;
    _controller = controller;
    _onTap = onTap;
    _onChange = onChange;
    _prefixIcon = prefixIcon;
    _suffixIcon = suffixIcon;
  }
  
  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder(
      valueListenable: _showHiddenNtf,
      builder: (context, value, child) {
        return TextField(
          keyboardType: _kbType,
          maxLength: _maxLength,
          maxLines: _maxLines,
          controller: _controller,
          onTap: _onTap,
          onChanged: _onChange,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(2.w, 1.h, 2.w, 1.h),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(
                style: BorderStyle.solid,
                width: 5.0,
                color: Colors.white
              )
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                style: BorderStyle.solid,
                width: 2.0,
                color: Colors.grey
              )
            ),
            fillColor: const Color.fromARGB(255, 255, 255, 255),
            filled: true,
            prefixIcon: _prefixIcon,
            suffixIcon: _suffixIcon,
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: _textSize,
              color: Colors.white
            ),
            hintText: _hintText,
            counterStyle: const TextStyle(height: double.minPositive),
            counterText: ""
          ),
          style: TextStyle(
            fontSize: _textSize,
            color: Colors.black
          ),
          textAlign: _textAlign,
          readOnly: !_isEdit,
        );
      },
    );
  }
}