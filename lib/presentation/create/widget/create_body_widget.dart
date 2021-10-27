import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

class CreateBodyWidget extends StatelessWidget {
  final Function() onTap;
  final Widget widget;
  const CreateBodyWidget({
    Key? key,
    required this.onTap,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          widget,
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  width: size.width * 0.8,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18), color: appColor),
                  child: Center(
                    child: Text(
                      '선택완료',
                      style: theme.textTheme.bodyText2!
                          .copyWith(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
