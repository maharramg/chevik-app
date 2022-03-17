import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../utilities/delegates/delegates.dart';

final locator = GetIt.instance;
final _navigatorKey = GlobalKey<NavigatorState>();
final _scaffoldKey = GlobalKey<ScaffoldState>();

final ctx = _navigatorKey.currentContext;
ScaffoldState? get scKey => _scaffoldKey.currentState;

Future<void> setupLocator() async {
  Debugger.log('setup locator');

  locator.registerSingleton<GlobalKey<NavigatorState>>(_navigatorKey);
  locator.registerSingleton<GlobalKey<ScaffoldState>>(_scaffoldKey);
}
