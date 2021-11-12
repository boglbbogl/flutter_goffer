import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

Positioned createSubmittedBtn({
  required Function() onTap,
  required String title,
  Color? btnColor,
}) {
  return Positioned(
      left: 20,
      right: 20,
      bottom: 10,
      child: TextButton(
          style: TextButton.styleFrom(shadowColor: Colors.white),
          onPressed: onTap,
          child: Container(
              width: size.width,
              height: size.height * 0.06,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: btnColor ?? appColor),
              child: Center(
                  child: Text(
                title,
                style: theme.textTheme.bodyText2!
                    .copyWith(color: Colors.white, fontSize: 16),
              )))));
  // return Align(
  //   alignment: Alignment.bottomCenter,
  //   child: InkWell(
  //     onTap: onTap,
  //     child: Padding(
  //       padding: const EdgeInsets.only(bottom: 20),
  //       child: Container(
  //         width: size.width * 0.8,
  //         height: size.height * 0.07,
  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(18),
  //             color: btnColor ?? appColor),
  //         child: Center(
  //           child: Text(
  //             title,
  //             style: theme.textTheme.bodyText2!
  //                 .copyWith(color: Colors.white, fontSize: 15),
  //           ),
  //         ),
  //       ),
  //     ),
  //   ),
  // );
}
