import 'package:flutter/material.dart';
import 'package:flutter_goffer/presentation/feed/feed.dart';
import 'package:flutter_goffer/presentation/home/home_banner.dart';
import 'package:flutter_goffer/presentation/travel/travel_route_research_screen.dart';
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
              onPressed: () {},
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
