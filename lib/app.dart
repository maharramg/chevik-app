import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'infrastructure/service/service.dart';
import 'l10n/l10n.dart';
import 'utilities/router/router.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Startup Project',
      theme: ThemeData.light().copyWith(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
      ),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      navigatorKey: locator<GlobalKey<NavigatorState>>(),
      initialRoute: RoutePaths.ROOT,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
