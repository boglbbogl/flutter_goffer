import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

class CreateBodyWidget extends StatelessWidget {
  final Function() onTap;
  final Widget widget;
  final String btnText;
  final bool isAddressSearchBar;
  const CreateBodyWidget({
    Key? key,
    required this.onTap,
    required this.widget,
    required this.btnText,
    required this.isAddressSearchBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
              top: 35,
              right: 15,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.clear_outlined,
                  color: appColor,
                  size: 30,
                ),
              )),
          widget,
          if (isAddressSearchBar)
            Container()
          else
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
                        borderRadius: BorderRadius.circular(18),
                        color: appColor),
                    child: Center(
                      child: Text(
                        btnText,
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
