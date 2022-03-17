import 'package:flutter/material.dart';

class AppIcons {
  static AppIcons? _instance;
  static AppIcons get instance => _instance ??= AppIcons._init();

  AppIcons._init();

  static const IconData menu = Icons.menu;
  static const IconData settings = Icons.settings;
  static const IconData brightness = Icons.brightness_medium;
}
