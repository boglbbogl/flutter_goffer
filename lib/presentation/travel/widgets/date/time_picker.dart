import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/presentation/travel/widgets/date/time_list.dart';

class TimePicker extends StatelessWidget {
  const TimePicker({
    Key? key,
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
            time: context.watch<TravelCreateBloc>().state.startTravel!.time,
            onSelectedItemChanged: (int i) => context
                .read<TravelCreateBloc>()
                .add(TravelCreateEvent.startTimeSelected(start: timeList[i])),
          ),
          _timePickerForm(
            context: context,
            title: '도착 시간',
            time: context.watch<TravelCreateBloc>().state.endTravel!.time,
            onSelectedItemChanged: (int i) => context
                .read<TravelCreateBloc>()
                .add(TravelCreateEvent.endTimeSelected(end: timeList[i])),
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
                      color: appSubColor,
                      fontSize: 18,
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
                          fontSize: e != time ? 15 : 18,
                          color: e != time
                              ? const Color.fromRGBO(175, 175, 175, 1)
                              : appSubColor,
                          fontWeight:
                              e != time ? FontWeight.normal : FontWeight.bold),
                    )),
              ]),
        ),
      ],
    );
  }
}
