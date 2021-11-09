import 'package:flutter/material.dart';
import 'package:flutter_goffer/presentation/create/screen/create_main_page.dart';
import 'package:flutter_goffer/presentation/feed/feed.dart';
import 'package:flutter_goffer/presentation/home/home_banner.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeMainPage extends StatelessWidget {
  const HomeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GOFFER'),
        actions: [
          IconButton(
              onPressed: () {
                pushNewScreen(context,
                    screen: const CreateMainPage(),
                    pageTransitionAnimation: PageTransitionAnimation.slideUp,
                    withNavBar: false);
              },
              icon: const Icon(Icons.add_box_rounded,
                  color: Color.fromRGBO(71, 71, 71, 1))),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings_rounded,
                  color: Color.fromRGBO(71, 71, 71, 1))),
        ],
      ),
      body: Column(
        children: const [
          HomeBanner(),
          Feed(),
        ],
      ),
    );
  }
}
