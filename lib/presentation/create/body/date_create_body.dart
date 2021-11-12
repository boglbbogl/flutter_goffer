import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/animation/travel_animation_cubit.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:flutter_goffer/presentation/create/widget/date/date_range_picker.dart';
import 'package:flutter_goffer/presentation/create/widget/date/time_picker.dart';

class DateCreateBody extends StatelessWidget {
  final bool isExpandable;
  final TravelResearch start;
  final TravelResearch end;
  const DateCreateBody({
    Key? key,
    required this.isExpandable,
    required this.start,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.2),
          InkWell(
            onTap: () =>
                context.read<TravelAnimationCubit>().dateAndTimeExpandable(),
            child: Container(
              width: size.width * 0.9,
              height: size.height * 0.12,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  color: Colors.white70),
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        dateAndTimeForm(
                            isExpandable: isExpandable,
                            date: start.date,
                            time: start.time),
                        Icon(
                          Icons.airplane_ticket_outlined,
                          color: isExpandable ? appSubColor : appColor,
                        ),
                        dateAndTimeForm(
                            isExpandable: isExpandable,
                            date: end.date,
                            time: end.time),
                      ],
                    ),
                    Row(
                      children: [
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 1000),
                          transitionBuilder: (child, animation) {
                            return ScaleTransition(
                              scale: animation,
                              child: child,
                            );
                          },
                          child: isExpandable
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
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: size.width * 0.9,
            height: 2,
            color: isExpandable ? appSubColor : appColor,
          ),
          AnimatedSwitcher(
              duration: const Duration(milliseconds: 1000),
              child: isExpandable
                  ? TimePicker(
                      start: start.time,
                      end: end.time,
                    )
                  : DateRangePicker(
                      start: start.date,
                      end: end.date,
                    )),
        ],
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
      height: size.height * 0.1,
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
