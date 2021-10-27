import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

class DestinationCreateBody extends StatelessWidget {
  const DestinationCreateBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Center(
          child: Text(
        'Destination Create',
        style: theme.textTheme.bodyText2!.copyWith(fontSize: 80),
      )),
    );
  }
}
