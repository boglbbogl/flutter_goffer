import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

class CreateBodyWidget extends StatelessWidget {
  final Widget widget;
  final bool isShowBackBtn;
  final Function() onTap;

  const CreateBodyWidget({
    Key? key,
    required this.widget,
    required this.onTap,
    required this.isShowBackBtn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          if (isShowBackBtn)
            Positioned(
                top: 35,
                left: 15,
                child: IconButton(
                  onPressed: onTap,
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white70,
                    size: 22,
                  ),
                ))
          else
            Container(),
          Positioned(
              top: 35,
              right: 15,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.clear_outlined,
                  color: Colors.white70,
                  size: 25,
                ),
              )),
          widget,
        ],
      ),
    );
  }
}
