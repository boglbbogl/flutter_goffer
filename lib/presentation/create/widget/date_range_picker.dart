import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create/plan/create_plan_bloc.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateRangePicker extends StatelessWidget {
  const DateRangePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      // height: siz,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12)),
          color: Colors.white70),
      child: SfDateRangePicker(
        minDate: DateTime.now(),
        maxDate: DateTime(2024),
        initialSelectedRange: PickerDateRange(DateTime.now(), DateTime.now()),
        onSelectionChanged: (args) {
          if (args.value is PickerDateRange) {
            context.read<CreatePlanBloc>().add(CreatePlanEvent.dateSelected(
                start: args.value.startDate.toString().substring(0, 10),
                end: args.value.endDate == null
                    ? args.value.startDate.toString().substring(0, 10)
                    : args.value.endDate.toString().substring(0, 10)));
          }
        },
        selectionMode: DateRangePickerSelectionMode.range,

        rangeTextStyle:
            theme.textTheme.bodyText2!.copyWith(color: Colors.white),

        monthCellStyle: DateRangePickerMonthCellStyle(
            disabledDatesTextStyle:
                theme.textTheme.bodyText2!.copyWith(fontSize: 0),
            textStyle: theme.textTheme.bodyText2!
                .copyWith(color: const Color.fromRGBO(155, 155, 155, 1)),
            todayTextStyle: theme.textTheme.bodyText2!.copyWith(
                color: const Color.fromRGBO(91, 91, 91, 1),
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
            fontWeight: FontWeight.bold,
            color: appColor,
            fontSize: 22,
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
