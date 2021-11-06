import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_goffer/presentation/_main/main_page.dart';
import 'package:flutter_goffer/presentation/splash/error_screen.dart';

class Location extends BeamLocation {
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      BeamPage(child: MainPage(), key: const ValueKey('main')),
    ];
  }

  @override
  List get pathBlueprints => ['/'];
}

final routerDelegate = BeamerDelegate(
  guards: [
    BeamGuard(
        pathBlueprints: ['/'],
        check: (context, location) {
          return true;
        },
        showPage: BeamPage(child: ErrorScreen())),
  ],
  locationBuilder: BeamerLocationBuilder(beamLocations: [
    Location(),
  ]),
);
