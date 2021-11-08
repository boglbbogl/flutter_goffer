import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

class ProfileMainPage extends StatelessWidget {
  const ProfileMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings_rounded,
                  color: Color.fromRGBO(71, 71, 71, 1))),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 200, height: 100, color: appColor),
            Container(width: 200, height: 100, color: appSubColor),
          ],
        ),
      ),
    );
  }
}
