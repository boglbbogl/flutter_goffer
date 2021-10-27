import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

class LayoverCreateBody extends StatelessWidget {
  const LayoverCreateBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Center(
          child: Text(
        'Layover Create',
        style: theme.textTheme.bodyText2!.copyWith(fontSize: 80),
      )),
    );
  }
}
