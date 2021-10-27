import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/presentation/create/widget/submitted_button.dart';

class DateCreateBody extends StatelessWidget {
  const DateCreateBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Center(
              child: Text(
            'Date Create',
            style: theme.textTheme.bodyText2!.copyWith(fontSize: 80),
          )),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     width: size.width * 0.8,
          //     height: size.height * 0.07,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(18), color: Colors.red),
          //   ),
          // ),
          submittedButton()
        ],
      ),
    );
  }
}
