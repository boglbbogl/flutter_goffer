import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/find_location/find_location_cubit.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/presentation/travel/travel_local_data/representative_tourist.dart';
import 'package:flutter_goffer/presentation/travel/widgets/route_research/location_select_toggle_button.dart';
import 'package:flutter_goffer/presentation/travel/widgets/route_research/travel_route_research_list_view.dart';

class TravelRouteResearchScreen extends StatelessWidget {
  final String x;
  final String y;
  final String id;
  final String placeName;
  const TravelRouteResearchScreen({
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          context
                              .read<TravelCreateBloc>()
                              .add(TravelCreateEvent.startDestinationSelected(
                                x: x,
                                y: y,
                                id: id,
                                placeName: placeName,
                              ));
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
                                      placeName: placeName,
                                      research: context
                                          .read<TravelCreateBloc>()
                                          .state
                                          .routeResearch)));
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
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  '목적지를 선택해 주세요',
                  style: theme.textTheme.bodyText2!.copyWith(
                      color: const Color.fromRGBO(135, 135, 135, 1),
                      fontSize: 22),
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: LocationSelectToggleButton(
                    selectedIndex:
                        context.watch<FindLocationCubit>().state.selectedIndex),
              ),
              const SizedBox(height: 20),
              const TravelRouteResearchListView(),
            ],
          ),
        ),
      ),
    );
  }
}
