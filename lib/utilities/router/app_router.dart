import 'package:flutter/material.dart';

import '../../presentation/screens/screens.dart';
import '../extension/extension.dart';
import 'router.dart';

class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.ROOT:
        return RootScreen().route;
      case RoutePaths.SETTINGS:
        return SettingsScreen().route;
      case RoutePaths.LOGIN:
        return LoginScreen().route;
      case RoutePaths.REGISTRATION:
        return RegistrationScreen().route;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
