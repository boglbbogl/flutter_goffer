import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

// splash image, duration 테스트
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: constraints.maxHeight,
        width: constraints.maxWidth,
        color: Colors.white,
        child: Opacity(
            opacity: 1,
            child: ExtendedImage.asset(
              'assets/splash/splash_night.jpg',
              fit: BoxFit.cover,
            )),
      );
    });
  }
}
