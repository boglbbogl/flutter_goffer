import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

Padding destinationToggleSwitch({
  required Function() onTap,
  required bool isToggle,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: SizedBox(
      width: size.width * 0.77,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          InkWell(
            onTap: onTap,
            child: Stack(
              children: [
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2, color: appColor),
                      color: Colors.white70),
                ),
                Positioned(
                  right: !isToggle ? null : 0,
                  child: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: appColor),
                    child: Center(
                        child: Text(!isToggle ? "출발지" : "목적지",
                            style: theme.textTheme.bodyText2!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12))),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}