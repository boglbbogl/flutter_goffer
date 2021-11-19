import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/authentication/auth_bloc/auth_bloc.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/application/travel/research/travel_research_cubit.dart';
import 'package:flutter_goffer/presentation/home/home_main_page.dart';
import 'package:flutter_goffer/presentation/profile/profile_main_page.dart';
import 'package:flutter_goffer/presentation/travel/create_background_page.dart';
import 'package:flutter_goffer/presentation/travel/travel_start_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  final PersistentTabController controller = PersistentTabController();

  List<Widget> _screens() {
    return [
      const HomeMainPage(),
      const CreateBackgroundPage(),
      const ProfileMainPage(),
    ];
  }

  PersistentBottomNavBarItem _btnProfileItem({required String profileUrl}) {
    return PersistentBottomNavBarItem(
      icon: profileUrl == ''
          ? const Icon(Icons.account_circle, size: 26)
          : CircleAvatar(
              backgroundColor: appSubColor,
              radius: 15,
              child: Padding(
                padding: const EdgeInsets.all(1.5),
                child: ClipOval(
                  child: ExtendedImage.network(
                    profileUrl,
                    scale: 2.0,
                  ),
                ),
              ),
            ),
      inactiveIcon: profileUrl == ''
          ? const Icon(Icons.account_circle, size: 26)
          : CircleAvatar(
              backgroundColor: appSubColor,
              radius: 15,
              child: ClipOval(
                child: ExtendedImage.network(
                  profileUrl,
                  scale: 2.0,
                ),
              ),
            ),
      inactiveColorPrimary: const Color.fromRGBO(135, 135, 135, 1),
      activeColorSecondary: appSubColor,
    );
  }

  PersistentBottomNavBarItem _btnItem({
    required IconData? icon,
    required IconData? inactiveIcon,
    double? iconSize = 26,
  }) {
    return PersistentBottomNavBarItem(
      icon: Icon(icon, size: 26),
      inactiveIcon: Icon(inactiveIcon, size: iconSize),
      inactiveColorPrimary: const Color.fromRGBO(135, 135, 135, 1),
      activeColorSecondary: appSubColor,
    );
  }

  List<PersistentBottomNavBarItem> _items({required String profileUrl}) {
    return [
      _btnItem(
        icon: Icons.home_filled,
        inactiveIcon: Icons.home_outlined,
      ),
      _btnItem(
        icon: Icons.add_box_rounded,
        inactiveIcon: Icons.add_box_rounded,
        iconSize: 30,
      ),
      _btnProfileItem(profileUrl: profileUrl),
    ];
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    theme = Theme.of(context);
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Scaffold(
            backgroundColor: Colors.black12,
            body: Center(
              child: CircularProgressIndicator(color: appSubColor),
            ),
          );
        }
        return WillPopScope(
          onWillPop: () async => false,
          child: PersistentTabView(
            context,
            controller: controller,
            screens: _screens(),
            items: _items(
              profileUrl:
                  state.appUser == null ? "" : state.appUser!.profileUrl,
              // profileUrl: _userProvider.kakaoUser == null
              //     ? ""
              //     : _userProvider
              //         .kakaoUser!.kakaoAccount!.profile!.thumbnailImageUrl!,
            ),
            onItemSelected: (index) {
              if (index == 1) {
                context
                    .read<TravelCreateBloc>()
                    .add(const TravelCreateEvent.started());
                context.read<TravelResearchCubit>()
                  ..getTravelResearch(id: 1)
                  ..researchPageChanged(0)
                  ..animationDelayTime(value: false);
                pushNewScreen(context,
                    screen: const TravelStartScreen(),
                    pageTransitionAnimation: PageTransitionAnimation.slideUp);

                controller.jumpToTab(0);
              }
            },
            navBarHeight: 65,
            navBarStyle: NavBarStyle.style6,
          ),
        );
      },
    );
  }
}
