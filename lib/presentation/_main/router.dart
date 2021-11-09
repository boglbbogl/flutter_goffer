import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_goffer/presentation/_main/main_page.dart';
import 'package:flutter_goffer/presentation/auth/sign_in_page.dart';

// Main Location
class Location extends BeamLocation {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(child: MainPage(), key: const ValueKey('main')),
    ];
  }

  @override
  List get pathBlueprints => ['/'];
  // router 추가시 변경 작업 해야함
}

final routerDelegate = BeamerDelegate(
  guards: [
    BeamGuard(
        pathBlueprints: ['/'],
        check: (context, location) {
          return false;
          // false -> SignIn, true -> Main
        },
        showPage: BeamPage(
            child:
                //  const ErrorScreen()
                const SignInPage())),
  ],
  locationBuilder: BeamerLocationBuilder(beamLocations: [
    Location(),
  ]),
);
