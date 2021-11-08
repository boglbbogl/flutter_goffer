import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/domain/create_plan.dart';

DefaultTextStyle dateAndTimeFlowResutl({
  required CreatePlan plan,
}) {
  return DefaultTextStyle(
    style:
        theme.textTheme.bodyText2!.copyWith(color: Colors.white, fontSize: 12),
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
          color: Colors.white,
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
