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
                left: 20,
                child: InkWell(
                  onTap: onTap,
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ))
          else
            Container(),
          Positioned(
              top: 35,
              right: 20,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.clear_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              )),
          widget,
        ],
      ),
    );
  }
}
