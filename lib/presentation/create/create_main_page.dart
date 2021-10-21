import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

class CreateMainPage extends StatelessWidget {
  const CreateMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Center(
        child: Text(
          'New Screen',
          style: theme.textTheme.bodyText2!.copyWith(
              color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 40),
        ),
      ),
    );
  }
}
