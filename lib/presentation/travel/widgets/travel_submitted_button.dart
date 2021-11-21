import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';

class TravelSubmittedButton extends StatelessWidget {
  const TravelSubmittedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 20,
      right: 20,
      child: Center(
        child: Container(
          width: size.width * 0.9,
          height: size.height * 0.07,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: context
                          .watch<TravelCreateBloc>()
                          .state
                          .startTravel!
                          .id
                          .isEmpty ||
                      context
                          .watch<TravelCreateBloc>()
                          .state
                          .endTravel!
                          .id
                          .isEmpty
                  ? Colors.black26
                  : Colors.black),
          child: TextButton(
            child: Text(
              '경로 만들기',
              style: theme.textTheme.bodyText2!.copyWith(
                  color: context
                              .watch<TravelCreateBloc>()
                              .state
                              .startTravel!
                              .id
                              .isEmpty ||
                          context
                              .watch<TravelCreateBloc>()
                              .state
                              .endTravel!
                              .id
                              .isEmpty
                      ? Colors.white70
                      : appSubColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            onPressed: () {
              context
                  .read<TravelCreateBloc>()
                  .add(const TravelCreateEvent.submitted());
            },
          ),
        ),
      ),
    );
  }
}
