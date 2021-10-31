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
              timePickerForm(
                title: '출발 시간',
                listWidget: ListView(
                  children: [
                    ...timeList.map((e) => Center(
                            child: InkWell(
                          onTap: () {
                            context.read<CreatePlanBloc>().add(
                                CreatePlanEvent.startTimeSelected(
                                    start: e.toString()));
                          },
                          child: timeListItemForm(e: e.toString(), time: start),
                        )))
                  ],
                ),
              ),
              timePickerForm(
                title: '도착 시간',
                listWidget: ListView(
                  children: [
                    ...timeList.map((e) => Center(
                            child: InkWell(
                          onTap: () {
                            context.read<CreatePlanBloc>().add(
                                CreatePlanEvent.endTimeSelected(
                                    end: e.toString()));
                          },
                          child: timeListItemForm(e: e.toString(), time: end),
                        )))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding timeListItemForm({
    required String e,
    required String time,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        e,
        style: theme.textTheme.bodyText2!.copyWith(
            fontSize: e != time ? 18 : 22,
            color:
                e != time ? const Color.fromRGBO(155, 155, 155, 1) : appColor,
            fontWeight: e != time ? FontWeight.normal : FontWeight.bold),
      ),
    );
  }

  Column timePickerForm({
    required String title,
    required Widget listWidget,
  }) {
    return Column(
      children: [
        SizedBox(
            width: size.width * 0.4,
            height: size.height * 0.08,
            child: Center(
                child: Text(title,
                    style: theme.textTheme.bodyText2!.copyWith(
                      color: appColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )))),
        SizedBox(
          height: size.height * 0.25,
          width: size.width * 0.35,
          child: listWidget,
        ),
      ],
    );
  }
}
