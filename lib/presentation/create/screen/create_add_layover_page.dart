import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

class CreateAddLayoverPage extends StatelessWidget {
  const CreateAddLayoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          '경유지 추가하기',
          style: theme.textTheme.bodyText2!
              .copyWith(color: appColor, fontSize: 18),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.clear_outlined,
              color: appColor,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: appColor,
              thickness: 2,
            ),
          )
        ],
      ),
    );
  }
}
