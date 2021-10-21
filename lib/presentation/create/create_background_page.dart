import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

class CreateBackgroundPage extends StatelessWidget {
  const CreateBackgroundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
          child: Text(
        '나만의 여정을 만들어 보세요',
        style: theme.textTheme.bodyText2!.copyWith(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
            fontSize: 30),
      )),
    );
  }
}
