import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

Align submittedButton() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width: size.width * 0.8,
      height: size.height * 0.07,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: Colors.red),
    ),
  );
}
