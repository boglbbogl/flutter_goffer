import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/presentation/_main/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// App Start

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ko', ''),
        Locale('en', ''),
      ],
      theme: ThemeData(
          // fontFamily: 'Yanolja',
          fontFamily: 'Baemin_Dohyeon',
          primaryColor: Colors.deepPurple,
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(
                // borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(width: 0, color: appColor)),
            focusedBorder: const UnderlineInputBorder(
              // borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(width: 0.7, color: Colors.red),
            ),
          )),
    );
  }
}
