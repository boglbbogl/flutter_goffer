import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
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
      Container(
        color: Colors.white,
        child: const Center(child: Text('Second Screen')),
      ),
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
        activeColor: Colors.deepPurple,
      ),
      _btnItem(
          title: "Add",
          icon: Icons.add_box_rounded,
          activeColor: Colors.deepOrange),
      _btnItem(
        title: "Setting",
        icon: Icons.settings,
        activeColor: Colors.amber,
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
        onItemSelected: (index) {},
        // backgroundColor: Colors.white,
        navBarHeight: 62,
        navBarStyle: NavBarStyle.style10,
      ),
    );
  }
}
