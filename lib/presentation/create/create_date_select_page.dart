import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

class CreateDateSelectPage extends StatelessWidget {
  const CreateDateSelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.clear_outlined,
                color: Colors.amber,
                size: 28,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: size.height * 0.2),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Row(
                children: [
                  Text(
                    '일정을 알려주세요',
                    style: theme.textTheme.bodyText2!.copyWith(
                        color: Colors.amber,
                        fontSize: 34,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.date_range_rounded,
                    color: Colors.amber,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
