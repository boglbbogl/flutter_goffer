import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/presentation/create/screen/create_background_page.dart';
import 'package:flutter_goffer/presentation/create/screen/create_main_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MainPage extends StatelessWidget {
  final PersistentTabController controller = PersistentTabController();
  List<Widget> _screens() {
    return [
      Scaffold(
        body: Container(
          color: Colors.white,
          child: const Center(child: Text('First Screen')),
        ),
      ),
      const CreateBackgroundPage(),
      Container(
        color: Colors.white,
        child: const Center(child: Text('Third Screen')),
      ),
    ];
  }

  PersistentBottomNavBarItem _btnItem({
    required String title,
    required IconData icon,
    required Color activeColor,
  }) {
    return PersistentBottomNavBarItem(
      title: title,
      icon: Icon(icon),
      textStyle: const TextStyle(fontWeight: FontWeight.bold),
      activeColorPrimary: activeColor,
      inactiveColorPrimary: const Color.fromRGBO(195, 195, 195, 1),
      activeColorSecondary: Colors.white,
    );
  }

  List<PersistentBottomNavBarItem> _items() {
    return [
      _btnItem(
        title: "Home",
        icon: Icons.home_filled,
        activeColor: appColor,
      ),
      _btnItem(
        title: "Add",
        icon: Icons.add_box_rounded,
        activeColor: appColor,
      ),
      _btnItem(
        title: "Setting",
        icon: Icons.settings,
        activeColor: appColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    theme = Theme.of(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: PersistentTabView(
        context,
        controller: controller,
        screens: _screens(),
        items: _items(),
        onItemSelected: (index) {
          if (index == 1) {
            pushNewScreen(context,
                screen: const CreateMainPage(),
                pageTransitionAnimation: PageTransitionAnimation.slideUp);
            controller.jumpToTab(0);
          }
        },
        // backgroundColor: Colors.white,
        navBarHeight: 62,
        navBarStyle: NavBarStyle.style10,
      ),
    );
  }
}
