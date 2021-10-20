import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Font 테스트'),
      ),
      body: Column(
        children: [
          Text('data'),
        ],
      ),
    );
  }
}
