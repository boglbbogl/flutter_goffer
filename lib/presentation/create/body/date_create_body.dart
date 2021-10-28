import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create_animation_cubit.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DateCreateBody extends StatelessWidget {
  final bool isExpandable;
  const DateCreateBody({
    Key? key,
    required this.isExpandable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.2),
          InkWell(
            onTap: () =>
                context.read<CreateAnimationCubit>().dateAndTimeExpandable(),
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
                        SizedBox(
                          width: size.width * 0.3,
                          height: size.height * 0.1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '2021',
                                    style: theme.textTheme.bodyText2!.copyWith(
                                        color: appColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                  Text(
                                    '10/20',
                                    style: theme.textTheme.bodyText2!.copyWith(
                                        color: appColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              Text(
                                '09:00',
                                style: theme.textTheme.bodyText2!.copyWith(
                                    color:
                                        const Color.fromRGBO(135, 135, 135, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.airplane_ticket_outlined,
                          color: appColor,
                        ),
                        SizedBox(
                          width: size.width * 0.3,
                          height: size.height * 0.1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '2021',
                                    style: theme.textTheme.bodyText2!.copyWith(
                                        color: appColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                  Text(
                                    '10/20',
                                    style: theme.textTheme.bodyText2!.copyWith(
                                        color: appColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              Text(
                                '09:00',
                                style: theme.textTheme.bodyText2!.copyWith(
                                    color:
                                        const Color.fromRGBO(135, 135, 135, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.access_time_rounded,
                          color: Colors.black,
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded)
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
            color: appColor,
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 1000),
            child: isExpandable
                ? const SizedBox()
                : Container(
                    width: size.width * 0.9,
                    // height: siz,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                        color: Colors.white70),
                    child: SfDateRangePicker(
                      minDate: DateTime.now(),
                      maxDate: DateTime(2100),
                      onSelectionChanged: (value) {},
                      selectionMode: DateRangePickerSelectionMode.range,
                      rangeTextStyle: theme.textTheme.bodyText2!
                          .copyWith(color: Colors.white),
                      monthCellStyle: DateRangePickerMonthCellStyle(
                          disabledDatesTextStyle:
                              theme.textTheme.bodyText2!.copyWith(fontSize: 0),
                          textStyle: theme.textTheme.bodyText2!.copyWith(
                              color: const Color.fromRGBO(155, 155, 155, 1)),
                          todayTextStyle: theme.textTheme.bodyText2!.copyWith(
                              color: const Color.fromRGBO(91, 91, 91, 1),
                              fontWeight: FontWeight.bold)),
                      startRangeSelectionColor: appColor,
                      endRangeSelectionColor: appColor,
                      rangeSelectionColor: appColor,
                      selectionTextStyle: theme.textTheme.bodyText2!
                          .copyWith(color: Colors.white),
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
                  ),
          ),
        ],
      ),
    );
  }
}
