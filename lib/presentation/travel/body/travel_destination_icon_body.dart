import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:flutter_goffer/presentation/travel/travel_local_data/representative_tourist.dart';

class TravelDestinationIconBody extends StatelessWidget {
  final List<TravelCourse> travelList;
  const TravelDestinationIconBody({
    Key? key,
    required this.travelList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.95,
      height: size.height * 0.05,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          ...travelList.where((element) => element.id != "").map((e) => InkWell(
                onTap: () {
                  if (context
                      .read<TravelCreateBloc>()
                      .state
                      .startTravel!
                      .id
                      .contains(e.id)) {
                    context.read<TravelCreateBloc>().add(
                        TravelCreateEvent.startDestinationSelected(
                            x: e.x, y: e.y, id: e.id, placeName: e.placeName));
                  } else if (context
                      .read<TravelCreateBloc>()
                      .state
                      .endTravel!
                      .id
                      .contains(e.id)) {
                    context.read<TravelCreateBloc>().add(
                        TravelCreateEvent.endDestinationSelected(
                            x: e.x, y: e.y, id: e.id, placeName: e.placeName));
                  } else {
                    context
                        .read<TravelCreateBloc>()
                        .add(TravelCreateEvent.layoverSelected(
                          layover: travel.copyWith(
                              id: e.id, x: e.x, y: e.y, placeName: e.placeName),
                        ));
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SizedBox(
                    height: size.height * 0.05,
                    child: Stack(
                      children: [
                        Container(
                          height: size.height * 0.06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 12, bottom: 12, left: 25, right: 25),
                            child: Center(
                              child: Text(
                                e.placeName,
                                style: theme.textTheme.bodyText2!.copyWith(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                        if (context
                            .watch<TravelCreateBloc>()
                            .state
                            .endTravel!
                            .id
                            .contains(e.id)) ...[
                          Positioned(
                            top: 2,
                            left: 9,
                            child: Icon(
                              Icons.circle,
                              color: appSubColor,
                              size: 12,
                            ),
                          )
                        ],
                        if (context
                            .watch<TravelCreateBloc>()
                            .state
                            .startTravel!
                            .id
                            .contains(e.id)) ...[
                          Positioned(
                            top: 4,
                            left: 3,
                            child: Icon(
                              Icons.circle,
                              color: appColor,
                              size: 12,
                            ),
                          )
                        ],
                        const Positioned(
                            top: 2,
                            right: 2,
                            child: Icon(
                              Icons.remove_circle,
                              color: Colors.white,
                              size: 18,
                            )),
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
