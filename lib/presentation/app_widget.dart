import 'package:flutter/material.dart';
import 'package:flutter_goffer/presentation/main_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      theme: ThemeData(
        fontFamily: 'Yanolja',
        primaryColor: Colors.deepPurple,
      ),
    );
  }
}
