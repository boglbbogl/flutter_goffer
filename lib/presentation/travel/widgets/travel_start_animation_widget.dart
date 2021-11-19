import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/application/travel/research/travel_research_cubit.dart';
import 'package:flutter_goffer/presentation/travel/travel_local_data/representative_tourist.dart';

class TravelStartAnimationWidget extends StatelessWidget {
  const TravelStartAnimationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TravelResearchCubit, TravelResearchState>(
      builder: (context, state) {
        if (state.research == null) {
          return Container(
            width: size.width,
            height: size.height,
            color: Colors.black,
            child: Center(
              child: CircularProgressIndicator(
                color: appSubColor,
              ),
            ),
          );
        }
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.15),
              titleForm(title: '나만의 일정을', leftPadding: 10, topPadding: 0),
              titleForm(title: '만드시겠습니까 ?', leftPadding: 40, topPadding: 10),
              SizedBox(height: size.height * 0.07),
              _futureAnimationForm(
                  delayTime: 0,
                  showWidget: SizedBox(
                    key: const Key('show'),
                    width: size.width * 0.9,
                    height: size.height * 0.07,
                    child: titleForm(
                        fontSize: 22,
                        title: '여행의 테마를 알려주세요',
                        leftPadding: 10,
                        topPadding: 0,
                        fontColor: Colors.white70),
                  )),
              _futureAnimationForm(
                  delayTime: state.isDelayTime ? 0 : 1000,
                  showWidget: SizedBox(
                    key: const Key('show'),
                    width: size.width * 0.9,
                    height: size.height * 0.5,
                    child: Column(
                      children: [
                        SizedBox(
                          width: size.width * 0.9,
                          height: size.height * 0.04,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              titleForm(
                                  fontSize: 18,
                                  title: state.research!.question,
                                  leftPadding: 10,
                                  topPadding: 0,
                                  fontColor: appSubColor),
                              Stack(
                                children: [
                                  if (state.researchIndex == 0 &&
                                      context
                                          .read<TravelCreateBloc>()
                                          .state
                                          .preResearch
                                          .asMap()
                                          .values
                                          .map((e) => e.id)
                                          .contains(
                                              "${state.researchIndex + 1}")) ...[
                                    _preResearchNextButtonForm(onTap: () {
                                      context.read<TravelResearchCubit>()
                                        ..getTravelResearch(id: 2)
                                        ..researchPageChanged(1);
                                    })
                                  ],
                                  if (state.researchIndex == 1 &&
                                      context
                                          .read<TravelCreateBloc>()
                                          .state
                                          .preResearch
                                          .asMap()
                                          .values
                                          .map((e) => e.id)
                                          .contains(
                                              "${state.researchIndex + 1}")) ...[
                                    _preResearchNextButtonForm(onTap: () {
                                      context.read<TravelResearchCubit>()
                                        ..getTravelResearch(id: 3)
                                        ..researchPageChanged(2);
                                    }),
                                  ],
                                  SizedBox(
                                    height: size.height * 0.4,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.error_outline,
                                      size: 13, color: Colors.white70),
                                  const SizedBox(width: 2),
                                  Text(
                                    '다중 선택이 가능합니다',
                                    style: theme.textTheme.bodyText2!.copyWith(
                                        color: Colors.white70, fontSize: 9),
                                  ),
                                ],
                              ),
                              Text(
                                '${state.researchIndex + 1}/3',
                                style: theme.textTheme.bodyText2!.copyWith(
                                    color: Colors.white70, fontSize: 9),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width,
                          height: size.height * 0.4,
                          child: GridView(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 5.0,
                              crossAxisSpacing: 5.0,
                              childAspectRatio: 2.0,
                            ),
                            children: [
                              ...state.research!.answerChoice.entries.map((e) =>
                                  InkWell(
                                    onTap: () {
                                      context
                                          .read<TravelResearchCubit>()
                                          .animationDelayTime(value: true);

                                      context.read<TravelCreateBloc>().add(
                                              TravelCreateEvent
                                                  .preResearchSelected(
                                            research: travelResearch.copyWith(
                                                id: "${state.researchIndex + 1}"
                                                    .toString(),
                                                answer: [e.key]),
                                          ));
                                    },
                                    child: Container(
                                        height: size.height * 0.04,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: context
                                                    .watch<TravelCreateBloc>()
                                                    .state
                                                    .preResearch
                                                    .contains(travelResearch
                                                        .copyWith(
                                                            answer: [e.key],
                                                            id:
                                                                "${state.researchIndex + 1}"))
                                                ? Border.all(
                                                    color: appSubColor,
                                                    width: 3)
                                                : Border.all(),
                                            color: Colors.white70),
                                        child: Center(
                                          child: Text(
                                            e.value.toString(),
                                            style: theme.textTheme.bodyText2!.copyWith(
                                                color: context
                                                        .watch<
                                                            TravelCreateBloc>()
                                                        .state
                                                        .preResearch
                                                        .contains(travelResearch
                                                            .copyWith(
                                                                answer: [e.key],
                                                                id:
                                                                    "${state.researchIndex + 1}"))
                                                    ? appSubColor
                                                    : const Color.fromRGBO(
                                                        115, 115, 115, 1)),
                                          ),
                                        )),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        );
      },
    );
  }

  SizedBox _preResearchNextButtonForm({
    required Function() onTap,
  }) {
    return SizedBox(
      height: size.height * 0.04,
      width: size.width * 0.12,
      child: InkWell(
        onTap: onTap,
        child: Icon(
          Icons.double_arrow_rounded,
          color: appSubColor,
          size: 35,
        ),
      ),
    );
  }

  FutureBuilder<int> _futureAnimationForm({
    required int delayTime,
    required Widget showWidget,
  }) {
    return FutureBuilder(
        future: Future.delayed(Duration(milliseconds: delayTime), () => 0),
        builder: (context, snapshot) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: snapshot.connectionState == ConnectionState.done
                ? showWidget
                : SizedBox(
                    key: const Key('hide'),
                    width: size.width * 0.9,
                    height: size.height * 0.07,
                    child: titleForm(title: '', leftPadding: 30, topPadding: 0),
                  ),
          );
        });
  }

  Padding titleForm({
    required String title,
    required double leftPadding,
    required double topPadding,
    double? fontSize = 28,
    Color? fontColor,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding, top: topPadding),
      child: Text(
        title,
        style: theme.textTheme.bodyText2!.copyWith(
            color: fontColor ?? appColor,
            fontWeight: FontWeight.bold,
            fontSize: fontSize),
      ),
    );
  }
}
