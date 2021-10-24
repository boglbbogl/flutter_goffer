import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/presentation/create/create_date_select_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CreateMainPage extends StatelessWidget {
  const CreateMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(seconds: 1),
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
          child: InkWell(
            onTap: () =>
                pushNewScreen(context, screen: const CreateDateSelectPage()),
            child: Container(
              height: size.height * 0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18), color: Colors.amber),
              child: Center(
                  child: Text(
                '시작하기',
                style: theme.textTheme.bodyText2!.copyWith(
                    color: Colors.deepPurple,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.1),
            titleForm(title: '나만의 일정을', leftPadding: 30, topPadding: 0),
            titleForm(title: '만드시겠습니까 ?', leftPadding: 70, topPadding: 20),
          ],
        ),
      ),
    );
  }

  Padding titleForm({
    required String title,
    required double leftPadding,
    required double topPadding,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding, top: topPadding),
      child: Text(
        title,
        style: theme.textTheme.bodyText2!.copyWith(
            color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 40),
      ),
    );
  }
}
