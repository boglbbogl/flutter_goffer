import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create/plan/create_plan_bloc.dart';
import 'package:flutter_goffer/presentation/create/widget/time_list.dart';

class TimePicker extends StatelessWidget {
  final String start;
  final String end;
  const TimePicker({
    Key? key,
    required this.start,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.4,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12)),
          color: Colors.white38),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  SizedBox(
                      width: size.width * 0.35,
                      height: size.height * 0.08,
                      child: Center(child: Text('출발 시간'))),
                  SizedBox(
                    height: size.height * 0.25,
                    width: size.width * 0.35,
                    child: ListView(
                      children: [
                        ...timeList.map((e) => Center(
                                child: InkWell(
                              onTap: () {
                                context.read<CreatePlanBloc>().add(
                                    CreatePlanEvent.startTimeSelected(
                                        start: e.toString()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  e.toString(),
                                  style: theme.textTheme.bodyText2!.copyWith(
                                      fontSize: e != start ? 18 : 22,
                                      color: e != start
                                          ? const Color.fromRGBO(
                                              155, 155, 155, 1)
                                          : appColor,
                                      fontWeight: e != start
                                          ? FontWeight.normal
                                          : FontWeight.bold),
                                ),
                              ),
                            )))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                  width: size.width * 0.35,
                  child: Center(child: Text('도착 시간'))),
            ],
          )
        ],
      ),
    );
  }
}
