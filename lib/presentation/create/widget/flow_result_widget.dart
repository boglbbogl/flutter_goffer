import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/domain/create_plan.dart';

DefaultTextStyle dateAndTimeFlowResutl({
  required CreatePlan plan,
}) {
  return DefaultTextStyle(
    style: theme.textTheme.bodyText2!.copyWith(
        color: const Color.fromRGBO(115, 115, 115, 1),
        fontWeight: FontWeight.bold,
        fontSize: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              plan.startDate.toString().substring(0, 10),
            ),
            Text(plan.startTime)
          ],
        ),
        const Icon(
          Icons.airplane_ticket_outlined,
          color: Color.fromRGBO(115, 115, 115, 1),
        ),
        Column(
          children: [
            Text(
              plan.endDate.toString().substring(0, 10),
            ),
            Text(plan.endTime)
          ],
        ),
      ],
    ),
  );
}
