import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start_up/utilities/constants/colors.dart';

import 'infrastructure/service/service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'utilities/router/router.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Startup Project',
        theme: ThemeData(
          fontFamily: 'Monrope',
          brightness: Brightness.light,
          primaryColor: UIColors.primaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        navigatorKey: locator<GlobalKey<NavigatorState>>(),
        initialRoute: RoutePaths.LOGIN,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
