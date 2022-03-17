import 'dart:developer';

import 'package:flutter/material.dart';

import 'app.dart';
import 'infrastructure/service/service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  await setupLocator();
  runApp(App());
}
