import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create/plan/create_plan_bloc.dart';
import 'package:flutter_goffer/presentation/create/widget/time_list.dart';

class TimePicker1 extends StatelessWidget {
  final String start;
  final String end;
  const TimePicker1({
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
        children: [
          Column(
            children: [
              SizedBox(
                  width: size.width * 0.4,
                  height: size.height * 0.08,
                  child: Center(
                      child: Text('출발 시간',
                          style: theme.textTheme.bodyText2!.copyWith(
                            color: appColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )))),
              SizedBox(
                height: size.height * 0.25,
                width: size.width * 0.35,
                child: CupertinoPicker(
                    // scrollController: controller,
                    itemExtent: 50,
                    onSelectedItemChanged: (int i) {
                      print(i);
                      context.read<CreatePlanBloc>().add(
                          CreatePlanEvent.startTimeSelected(
                              start: timeList[i]));
                    },
                    children: [
                      ...timeList.map((e) => Text(
                            e,
                            style: theme.textTheme.bodyText2!.copyWith(
                                fontSize: e != start ? 18 : 22,
                                color: e != start
                                    ? const Color.fromRGBO(155, 155, 155, 1)
                                    : appColor,
                                fontWeight: e != start
                                    ? FontWeight.normal
                                    : FontWeight.bold),
                          )),
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
