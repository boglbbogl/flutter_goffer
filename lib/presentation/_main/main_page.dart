import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/presentation/create/screen/create_background_page.dart';
import 'package:flutter_goffer/presentation/create/screen/create_main_page.dart';
import 'package:flutter_goffer/presentation/home/home_main_page.dart';
import 'package:flutter_goffer/presentation/profile/profile_main_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MainPage extends StatelessWidget {
  final PersistentTabController controller = PersistentTabController();
  List<Widget> _screens() {
    return [
      const HomeMainPage(),
      const CreateBackgroundPage(),
      const ProfileMainPage(),
    ];
  }

  PersistentBottomNavBarItem _btnItem({
    required String title,
    required IconData icon,
    required IconData inactiveIcon,
  }) {
    return PersistentBottomNavBarItem(
      title: title,
      icon: Icon(icon, size: 22),
      inactiveIcon: Icon(inactiveIcon, size: 22),
      textStyle: const TextStyle(fontSize: 12),
      activeColorPrimary: const Color.fromRGBO(71, 71, 71, 1),
      inactiveColorPrimary: const Color.fromRGBO(215, 215, 215, 1),
      activeColorSecondary: Colors.white,
    );
  }

  List<PersistentBottomNavBarItem> _items() {
    return [
      _btnItem(
        title: "홈",
        icon: Icons.home_filled,
        inactiveIcon: Icons.home_outlined,
      ),
      _btnItem(
        title: "만들기",
        icon: Icons.add_box_rounded,
        inactiveIcon: Icons.add_box_rounded,
      ),
      _btnItem(
        title: "프로필",
        icon: Icons.account_box_rounded,
        inactiveIcon: Icons.account_box_outlined,
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
        // backgroundColor: appColor,
        navBarHeight: 65,
        navBarStyle: NavBarStyle.style10,
      ),
    );
  }
}
