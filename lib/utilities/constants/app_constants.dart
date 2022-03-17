import 'package:flutter/material.dart';

class AppConstants {
  static AppConstants? _instance;
  static AppConstants get instance => _instance ??= AppConstants._init();

  AppConstants._init();

  static RoundedRectangleBorder shape(double radius) => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      );

  static const EdgeInsetsGeometry padding8 = EdgeInsets.all(8.0);
}
