import 'package:flutter/material.dart';
import 'package:flutter_goffer/presentation/_main/app_widget.dart';
import 'package:flutter_goffer/presentation/splash/splash_screen.dart';

class GofferApp extends StatelessWidget {
  const GofferApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(milliseconds: 2500), () => 0),
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
      return const AppWidget();
    } else {
      return const SplashScreen();
    }
  }
}