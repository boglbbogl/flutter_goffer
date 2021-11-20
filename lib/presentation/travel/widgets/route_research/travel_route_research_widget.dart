import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/find_location/find_location_cubit.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/application/travel/research/travel_research_cubit.dart';
import 'package:flutter_goffer/presentation/travel/travel_local_data/representative_tourist.dart';
import 'package:flutter_goffer/presentation/travel/widgets/route_research/location_select_toggle_button.dart';

class TravelRouteResearchWidget extends StatelessWidget {
  final String x;
  final String y;
  final String id;
  final String placeName;
  const TravelRouteResearchWidget({
    Key? key,
    required this.x,
    required this.y,
    required this.id,
    required this.placeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        '취소하기',
                        style: theme.textTheme.bodyText2!.copyWith(
                            color: const Color.fromRGBO(135, 135, 135, 1)),
                      )),
                  Text(
                    placeName,
                    style: theme.textTheme.bodyText2!
                        .copyWith(color: Colors.black, fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {
                        if (context
                                .read<FindLocationCubit>()
                                .state
                                .selectedIndex ==
                            0) {
                          context.read<TravelCreateBloc>().add(
                              TravelCreateEvent.startDestinationSelected(
                                  x: x, y: y, id: id, placeName: placeName));
                          Navigator.of(context).pop();
                        } else if (context
                                .read<FindLocationCubit>()
                                .state
                                .selectedIndex ==
                            1) {
                          context.read<TravelCreateBloc>().add(
                              TravelCreateEvent.endDestinationSelected(
                                  x: x, y: y, id: id, placeName: placeName));
                          Navigator.of(context).pop();
                        } else if (context
                                    .read<FindLocationCubit>()
                                    .state
                                    .selectedIndex ==
                                2 &&
                            context
                                    .read<TravelCreateBloc>()
                                    .state
                                    .wayTravel
                                    .length <
                                3) {
                          context.read<TravelCreateBloc>().add(
                              TravelCreateEvent.layoverSelected(
                                  layover: travel.copyWith(
                                      x: x,
                                      y: y,
                                      id: id,
                                      placeName: placeName)));
                          Navigator.of(context).pop();
                        } else {
                          Navigator.of(context).pop();
                          FlushbarHelper.createInformation(
                                  message: '경유지는 3곳 이상 추가할 수 없습니다')
                              .show(context);
                        }
                      },
                      child: Text(
                        '선택하기',
                        style: theme.textTheme.bodyText2!
                            .copyWith(color: appSubColor),
                      )),
                ],
              ),
              const SizedBox(height: 15),
              LocationSelectToggleButton(
                  selectedIndex:
                      context.watch<FindLocationCubit>().state.selectedIndex),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context
                          .watch<TravelResearchCubit>()
                          .state
                          .research!
                          .question,
                      style: theme.textTheme.bodyText2!.copyWith(
                          color: const Color.fromRGBO(135, 135, 135, 1),
                          fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: size.height * 0.05,
                      width: size.width,
                      child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            ...context
                                .watch<TravelResearchCubit>()
                                .state
                                .research!
                                .answerChoice
                                .entries
                                .map((e) => Padding(
                                      padding: const EdgeInsets.only(
                                          left: 1, right: 12),
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      115, 115, 115, 1),
                                                  width: 1.1)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Center(
                                                child: Text(
                                              e.value.toString(),
                                              style: theme.textTheme.bodyText2!
                                                  .copyWith(
                                                      color:
                                                          const Color.fromRGBO(
                                                              155, 155, 155, 1),
                                                      fontSize: 12),
                                            )),
                                          )),
                                    )),
                          ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
