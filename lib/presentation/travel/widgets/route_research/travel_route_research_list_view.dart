import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/application/travel/research/travel_research_cubit.dart';
import 'package:flutter_goffer/presentation/travel/travel_local_data/representative_tourist.dart';

class TravelRouteResearchListView extends StatelessWidget {
  const TravelRouteResearchListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> answerList = [];
    return ListView(
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            '여행의 테마를 선택해 주세요',
            style: theme.textTheme.bodyText2!
                .copyWith(color: appSubColor, fontSize: 22),
          ),
        ),
        ...context
            .watch<TravelResearchCubit>()
            .state
            .travelRouteResearchList
            .map((data) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        data.question,
                        style: theme.textTheme.bodyText2!.copyWith(
                            color: const Color.fromRGBO(135, 135, 135, 1),
                            fontSize: 20),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                        height: size.height * 0.05,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ...data.answerChoice.entries.map((a) => Padding(
                                  padding:
                                      const EdgeInsets.only(left: 4, right: 12),
                                  child: InkWell(
                                    onTap: () {
                                      answerList.add(a.key);
                                      context
                                          .read<TravelCreateBloc>()
                                          .add(TravelCreateEvent
                                              .routeResearchSelected(
                                                  research:
                                                      travelResearch.copyWith(
                                            id: data.question,
                                            answer: [a.key],
                                          )));
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: context
                                                    .watch<TravelCreateBloc>()
                                                    .state
                                                    .routeResearch
                                                    .contains(travelResearch
                                                        .copyWith(
                                                            answer: [a.key],
                                                            id: data.question))
                                                ? Border.all(color: appSubColor)
                                                : Border.all(
                                                    color: const Color.fromRGBO(
                                                        135, 135, 135, 1),
                                                  ),
                                            color: const Color.fromRGBO(
                                                245, 245, 245, 1)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 14),
                                          child: Center(
                                              child: Text(
                                            a.value.toString(),
                                            style: theme.textTheme.bodyText2!.copyWith(
                                                color: context
                                                        .watch<
                                                            TravelCreateBloc>()
                                                        .state
                                                        .routeResearch
                                                        .contains(travelResearch
                                                            .copyWith(answer: [
                                                          a.key
                                                        ], id: data.question))
                                                    ? appSubColor
                                                    : const Color.fromRGBO(
                                                        135, 135, 135, 1),
                                                fontSize: 13),
                                          )),
                                        )),
                                  ),
                                ))
                          ],
                        )),
                  ],
                ))
      ],
    );
  }
}
