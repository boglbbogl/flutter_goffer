import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';

class TravelDateAndTimeBody extends StatelessWidget {
  const TravelDateAndTimeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context
            .read<TravelCreateBloc>()
            .add(const TravelCreateEvent.dateAndTimeBottomBar(value: true));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          dateAndTimeForm(
            date: context.watch<TravelCreateBloc>().state.startTravel!.date,
          ),
          const Icon(
            Icons.airplane_ticket_outlined,
            color: Colors.black,
          ),
          dateAndTimeForm(
            date: context.watch<TravelCreateBloc>().state.endTravel!.date,
          ),
          Icon(
            context.watch<TravelCreateBloc>().state.isDateAndTimeSearchBar
                ? Icons.keyboard_arrow_down_outlined
                : Icons.keyboard_arrow_up_outlined,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  SizedBox dateAndTimeForm({
    required String date,
  }) {
    return SizedBox(
      width: size.width * 0.29,
      height: size.height * 0.07,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            date.substring(0, 4),
            style: theme.textTheme.bodyText2!.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 5),
          Text(
            date.substring(5, 10).replaceAll("-", "/"),
            style: theme.textTheme.bodyText2!
                .copyWith(color: Colors.black, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
