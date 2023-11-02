// ignore_for_file: must_be_immutable

import 'dart:async';

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  
  Widget child;
  ButtonStyle? style;
  ButtonStyle? pressedStyle;
  Function()? onPressed;
  Function()? onLongPress;
  int longPressTime = 0;

  Timer? _timer;
  int _count = 0;
  final ValueNotifier<bool> _isPressedNtf = ValueNotifier(false);

  MyButton({super.key, required this.child, this.onPressed, this.onLongPress, this.longPressTime = 9999999, this.style, this.pressedStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        _isPressedNtf.value = true;
        if(_timer != null) {
          _timer!.cancel();
        }
        _count = 0;
        _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) { 
          _count++;
          if(_count >= (longPressTime / 100).floor()) {
            if(onLongPress != null) {
              onLongPress!();
            }
            _isPressedNtf.value = false;
            timer.cancel();
          }
        });
      },
      onTapUp: (details) {
        _isPressedNtf.value = false;
        _timer?.cancel();
        if(_count < (longPressTime / 100).floor()) {
          if(onPressed != null) {
            onPressed!();
          }
        }
      },
      onTapCancel: () {
        _isPressedNtf.value = false;
        _timer?.cancel();
        if(_count < (longPressTime / 100).floor()) {
          if(onPressed != null) {
            onPressed!();
          }
        }
      },
      child: ValueListenableBuilder(
        valueListenable: _isPressedNtf,
        builder: (context, value, child) {
          return TextButton(
            onPressed: null,
            style: _isPressedNtf.value && pressedStyle != null ? pressedStyle : style,
            child: this.child,
          );
        }
      ),
    );
  }
}