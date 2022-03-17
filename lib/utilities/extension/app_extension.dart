import 'package:flutter/material.dart';

extension RouteExtension on Widget {
  Route get route => MaterialPageRoute(builder: (_) => this);
}
