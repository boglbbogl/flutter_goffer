import 'package:flutter/material.dart';
import 'package:flutter_goffer/presentation/main_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
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
      ),
    );
  }
}
