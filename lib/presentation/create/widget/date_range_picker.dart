import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create/plan/create_plan_bloc.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateRangePicker extends StatelessWidget {
  final String start;
  final String end;
  const DateRangePicker({
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
          color: Colors.white70),
      child: SfDateRangePicker(
        minDate: DateTime.now(),
        maxDate: DateTime(2024),
        initialDisplayDate: DateTime.parse(start),
        initialSelectedRange:
            PickerDateRange(DateTime.parse(start), DateTime.parse(end)),
        onSelectionChanged: (args) {
          if (args.value is PickerDateRange) {
            context.read<CreatePlanBloc>().add(CreatePlanEvent.dateSelected(
                start: args.value.startDate.toString(),
                end: args.value.endDate == null
                    ? args.value.startDate.toString()
                    : args.value.endDate.toString()));
          }
        },
        selectionMode: DateRangePickerSelectionMode.range,

        rangeTextStyle: theme.textTheme.bodyText2!
            .copyWith(color: Colors.white, fontSize: 12),

        monthCellStyle: DateRangePickerMonthCellStyle(
            disabledDatesTextStyle:
                theme.textTheme.bodyText2!.copyWith(fontSize: 0),
            textStyle: theme.textTheme.bodyText2!.copyWith(
                color: const Color.fromRGBO(195, 195, 195, 1), fontSize: 12),
            todayTextStyle: theme.textTheme.bodyText2!.copyWith(
                color: const Color.fromRGBO(135, 135, 135, 1),
                fontSize: 12,
                fontWeight: FontWeight.bold)),
        startRangeSelectionColor: appColor,
        endRangeSelectionColor: appColor,
        rangeSelectionColor: appColor,

        selectionTextStyle:
            theme.textTheme.bodyText2!.copyWith(color: Colors.white),
        todayHighlightColor: appColor,
        // selectionColor: Colors.deepPurple,
        // backgroundColor: Colors.deepPurple,
        allowViewNavigation: false,
        // view:  DateRangePickerView.month,
        headerStyle: DateRangePickerHeaderStyle(
          textStyle: theme.textTheme.bodyText2!.copyWith(
            // fontWeight: FontWeight.bold,
            color: appColor,
            fontSize: 15,
            fontStyle: FontStyle.italic,
          ),
        ),
        monthViewSettings: const DateRangePickerMonthViewSettings(
          enableSwipeSelection: false,
        ),
      ),
    );
  }
}
