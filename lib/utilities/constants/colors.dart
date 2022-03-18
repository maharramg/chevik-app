import 'package:flutter/material.dart';

class UIColors {
  static UIColors? _instance;
  static UIColors get instance => _instance ??= UIColors._init();

  UIColors._init();

  static const Color primaryColor = Color(0xff007AFF);
  static const Color blackColor = Color(0xff0C0C0C);
  static const Color greyColor = Color(0xff7A7A7B);
  static const Color fieldColor = Color(0xffF8F9FA);
}
