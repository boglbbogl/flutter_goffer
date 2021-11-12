import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';

DefaultTextStyle dateAndTimeFlowResutl({
  required TravelResearch startTravel,
  required TravelResearch endTravel,
}) {
  return DefaultTextStyle(
    style: theme.textTheme.bodyText2!
        .copyWith(color: Colors.white70, fontSize: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              startTravel.date.toString().substring(0, 10),
            ),
            Text(startTravel.time)
          ],
        ),
        const Icon(
          Icons.airplane_ticket_outlined,
          color: Colors.white70,
        ),
        Column(
          children: [
            Text(
              endTravel.date.toString().substring(0, 10),
            ),
            Text(endTravel.time)
          ],
        ),
      ],
    ),
  );
}

DefaultTextStyle destinationFlowResult({
  required String start,
  required String end,
}) {
  return DefaultTextStyle(
    style: theme.textTheme.bodyText2!
        .copyWith(color: Colors.white70, fontSize: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            width: size.width * 0.4,
            child: Text(
              start,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            )),
        SizedBox(
            width: size.width * 0.19,
            child: const Icon(
              Icons.more_horiz_outlined,
              color: Colors.white70,
            )),
        SizedBox(
            width: size.width * 0.4,
            child: Text(
              end,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ))
      ],
    ),
  );
}
