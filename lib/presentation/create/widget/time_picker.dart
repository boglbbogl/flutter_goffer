import 'package:flutter/cupertino.dart';
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _timePickerForm(
            context: context,
            title: '출발 시간',
            time: start,
            onSelectedItemChanged: (int i) => context
                .read<CreatePlanBloc>()
                .add(CreatePlanEvent.startTimeSelected(start: timeList[i])),
          ),
          _timePickerForm(
            context: context,
            title: '도착 시간',
            time: end,
            onSelectedItemChanged: (int i) => context
                .read<CreatePlanBloc>()
                .add(CreatePlanEvent.endTimeSelected(end: timeList[i])),
          ),
        ],
      ),
    );
  }

  Column _timePickerForm({
    required BuildContext context,
    required String title,
    required String time,
    required Function(int) onSelectedItemChanged,
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
          child: CupertinoPicker(
              scrollController: FixedExtentScrollController(
                  initialItem: timeList.indexOf(time)),
              itemExtent: 40,
              onSelectedItemChanged: onSelectedItemChanged,
              selectionOverlay: const CupertinoPickerDefaultSelectionOverlay(
                background: Colors.white10,
              ),
              children: [
                ...timeList.map((e) => Text(
                      e,
                      style: theme.textTheme.bodyText2!.copyWith(
                          fontSize: e != time ? 18 : 22,
                          color: e != time
                              ? const Color.fromRGBO(135, 135, 135, 1)
                              : appColor,
                          fontWeight:
                              e != time ? FontWeight.normal : FontWeight.bold),
                    )),
              ]),
        ),
      ],
    );
  }
}
