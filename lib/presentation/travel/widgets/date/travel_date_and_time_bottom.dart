import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/animation/travel_animation_cubit.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/presentation/travel/widgets/date/date_range_picker.dart';
import 'package:flutter_goffer/presentation/travel/widgets/date/time_picker.dart';

class TravelDateAndTimeBottom extends StatelessWidget {
  const TravelDateAndTimeBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(
          0,
          context.watch<TravelCreateBloc>().state.isDateAndTimeSearchBar
              ? 0
              : size.height,
          0),
      duration: const Duration(milliseconds: 300),
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                context.read<TravelCreateBloc>().add(
                    const TravelCreateEvent.dateAndTimeBottomBar(value: false));
              },
              child: Container(
                color: Colors.white38,
                height: size.height,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: size.width,
                height: size.height * 0.65,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          context.read<TravelCreateBloc>().add(
                              const TravelCreateEvent.dateAndTimeBottomBar(
                                  value: false));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: SizedBox(
                            width: size.width,
                            child: const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 35,
                              color: Colors.black,
                            ),
                          ),
                        )),
                    InkWell(
                      onTap: () => context
                          .read<TravelAnimationCubit>()
                          .dateAndTimeExpandable(),
                      child: Container(
                        width: size.width * 0.9,
                        height: size.height * 0.1,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  dateAndTimeForm(
                                    isExpandable: context
                                        .watch<TravelAnimationCubit>()
                                        .state
                                        .isExpandable,
                                    date: context
                                        .watch<TravelCreateBloc>()
                                        .state
                                        .startTravel!
                                        .date,
                                    time: context
                                        .watch<TravelCreateBloc>()
                                        .state
                                        .startTravel!
                                        .time,
                                  ),
                                  Icon(
                                    Icons.airplane_ticket_outlined,
                                    color: context
                                            .watch<TravelAnimationCubit>()
                                            .state
                                            .isExpandable
                                        ? appSubColor
                                        : appColor,
                                  ),
                                  dateAndTimeForm(
                                    isExpandable: context
                                        .watch<TravelAnimationCubit>()
                                        .state
                                        .isExpandable,
                                    date: context
                                        .watch<TravelCreateBloc>()
                                        .state
                                        .endTravel!
                                        .date,
                                    time: context
                                        .watch<TravelCreateBloc>()
                                        .state
                                        .endTravel!
                                        .time,
                                  ),
                                ],
                              ),
                              AnimatedSwitcher(
                                duration: const Duration(milliseconds: 1000),
                                transitionBuilder: (child, animation) {
                                  return ScaleTransition(
                                    scale: animation,
                                    child: child,
                                  );
                                },
                                child: context
                                        .watch<TravelAnimationCubit>()
                                        .state
                                        .isExpandable
                                    ? const Center(
                                        child: Icon(
                                        Icons.date_range_outlined,
                                        size: 28,
                                        color: Color.fromRGBO(135, 135, 135, 1),
                                      ))
                                    : const Icon(
                                        Icons.access_time_rounded,
                                        size: 28,
                                        color: Color.fromRGBO(135, 135, 135, 1),
                                      ),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color.fromRGBO(135, 135, 135, 1),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.9,
                      height: 2,
                      color: context
                              .watch<TravelAnimationCubit>()
                              .state
                              .isExpandable
                          ? appSubColor
                          : appColor,
                    ),
                    AnimatedSwitcher(
                        duration: const Duration(milliseconds: 1000),
                        child: context
                                .watch<TravelAnimationCubit>()
                                .state
                                .isExpandable
                            ? const TimePicker()
                            : DateRangePicker(
                                start: context
                                    .watch<TravelCreateBloc>()
                                    .state
                                    .startTravel!
                                    .date
                                    .substring(0, 10),
                                end: context
                                    .watch<TravelCreateBloc>()
                                    .state
                                    .endTravel!
                                    .date
                                    .substring(0, 10),
                              )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox dateAndTimeForm({
    required String date,
    required String time,
    required bool isExpandable,
  }) {
    return SizedBox(
      width: size.width * 0.29,
      height: size.height * 0.078,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                date.substring(0, 4),
                style: theme.textTheme.bodyText2!.copyWith(
                    color: isExpandable
                        ? const Color.fromRGBO(175, 175, 175, 1)
                        : appColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Text(
                date.substring(5, 10).replaceAll("-", "/"),
                style: theme.textTheme.bodyText2!.copyWith(
                    color: isExpandable
                        ? const Color.fromRGBO(175, 175, 175, 1)
                        : appColor,
                    // fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ],
          ),
          Text(
            time,
            style: theme.textTheme.bodyText2!.copyWith(
                color: isExpandable
                    ? appSubColor
                    : const Color.fromRGBO(175, 175, 175, 1),
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ),
        ],
      ),
    );
  }
}
