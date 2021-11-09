import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/presentation/advertisement/home_banner_ad.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        pushNewScreen(context,
            screen: const HomeBannerAd(),
            withNavBar: false,
            pageTransitionAnimation: PageTransitionAnimation.slideUp);
      },
      child: Card(
        elevation: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadowColor: Colors.white,
        color: Colors.black,
        margin: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Opacity(
              opacity: 0.6,
              child: Stack(
                children: [
                  ExtendedImage.asset(
                    'assets/images/home_banner.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60, bottom: 40),
                child: Text(
                  '자신만의 사진을 올려주세요',
                  style: theme.textTheme.bodyText2!.copyWith(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
