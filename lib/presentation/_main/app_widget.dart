import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
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
        appBarTheme: const AppBarTheme(
            titleSpacing: 20,
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: false,
            titleTextStyle: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(71, 71, 71, 1),
            )),
        // fontFamily: 'Yanolja',
        fontFamily: 'Baemin_Dohyeon',
        primaryColor: Colors.deepPurple,
        inputDecorationTheme: const InputDecorationTheme(
          focusedErrorBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          disabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          errorBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          border:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
