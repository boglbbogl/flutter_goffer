import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/presentation/_main/router.dart';
import 'package:flutter_goffer/presentation/splash/error_screen.dart';
import 'package:flutter_goffer/presentation/splash/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(milliseconds: 3000), () => 0),
        builder: (context, snapshot) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 3000),
            child: _splashLoadingWidget(snapshot),
          );
        });
  }

  StatelessWidget _splashLoadingWidget(AsyncSnapshot<Object?> snapshot) {
    if (snapshot.hasError) {
      return Text('hasError : ${snapshot.hasError}');
    } else if (snapshot.hasData) {
      return const SplashScreen();
    } else {
      return const SplashScreen();
    }
  }
}

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
          fontFamily: 'Yanolja',
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
