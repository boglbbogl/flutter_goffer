import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/domain/find_location/find_location.dart';
import 'package:flutter_goffer/presentation/travel/travel_route_research_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class TravelListViewAddressForm extends StatelessWidget {
  final FindLocation data;
  final int selectedIndex;

  const TravelListViewAddressForm({
    Key? key,
    required this.data,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List selectedList = [];
    for (final element in context.watch<TravelCreateBloc>().state.wayTravel) {
      selectedList.add(element.id);
    }
    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();
        context
            .read<TravelCreateBloc>()
            .add(const TravelCreateEvent.initialData());
        pushNewScreen(context,
            screen: TravelRouteResearchScreen(
              x: data.x,
              y: data.y,
              id: data.id,
              placeName: data.place_name,
            ));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
        child: Stack(
          children: [
            Container(
              width: size.width * 0.9,
              height: size.height * 0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: context
                          .watch<TravelCreateBloc>()
                          .state
                          .startTravel!
                          .id
                          .contains(data.id)
                      ? Border.all(color: appColor, width: 2)
                      : context
                              .watch<TravelCreateBloc>()
                              .state
                              .endTravel!
                              .id
                              .contains(data.id)
                          ? Border.all(color: appSubColor, width: 2)
                          : selectedList.contains(data.id)
                              ? Border.all(color: Colors.deepPurple, width: 2)
                              : Border.all(
                                  color:
                                      const Color.fromRGBO(135, 135, 135, 1))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data.place_name,
                      style: theme.textTheme.bodyText2!
                          .copyWith(fontSize: 14, color: Colors.black),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      data.road_address_name!.isEmpty
                          ? data.address_name
                          : data.road_address_name!,
                      style: theme.textTheme.bodyText2!.copyWith(
                          fontSize: 12,
                          color: const Color.fromRGBO(195, 195, 195, 1)),
                    ),
                  ],
                ),
              ),
            ),
            if (context
                .watch<TravelCreateBloc>()
                .state
                .startTravel!
                .id
                .contains(data.id)) ...[
              Positioned(
                  top: 10,
                  left: 10,
                  child: Text(
                    '출발지',
                    style: theme.textTheme.bodyText2!.copyWith(
                        color: appColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )),
            ],
            if (context
                .watch<TravelCreateBloc>()
                .state
                .endTravel!
                .id
                .contains(data.id)) ...[
              Positioned(
                  top: 30,
                  left: 10,
                  child: Text(
                    '도착지',
                    style: theme.textTheme.bodyText2!.copyWith(
                        color: appSubColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )),
            ],
            if (selectedList.contains(data.id)) ...[
              Positioned(
                  top: 10,
                  right: 10,
                  child: Text(
                    '경유지',
                    style: theme.textTheme.bodyText2!.copyWith(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )),
            ],
          ],
        ),
      ),
    );
  }
}
