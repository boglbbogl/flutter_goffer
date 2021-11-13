import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/animation/travel_animation_cubit.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:flutter_goffer/presentation/create/widget/create_body_widget.dart';
import 'package:flutter_goffer/presentation/create/widget/create_submitted_btn.dart';
import 'package:flutter_goffer/presentation/create/widget/flow_result_widget.dart';

class ResultCreateBody extends StatelessWidget {
  final TravelResearch startTravel;
  final TravelResearch endTravel;
  final String startDestination;
  final String endDestination;
  final List<TravelResearch> layover;

  const ResultCreateBody({
    Key? key,
    required this.startTravel,
    required this.endTravel,
    required this.startDestination,
    required this.endDestination,
    required this.layover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateBodyWidget(
      isShowBackBtn: true,
      onTap: () => context.read<TravelAnimationCubit>().changedPage(
          destination: -size.width, layover: 0, result: size.width),
      widget: SafeArea(
        child: Stack(
          children: [
            createSubmittedBtn(title: '경로 생성하기', onTap: () {}),
            Column(
              children: [
                const SizedBox(height: 100),
                dateAndTimeFlowResutl(
                  startTravel: startTravel,
                  endTravel: endTravel,
                ),
                const SizedBox(height: 80),
                destinationResultForm(
                    colors: appColor,
                    leftTitle: '출발지',
                    rightTitle: startDestination),
                const SizedBox(height: 30),
                SizedBox(
                  width: size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width * 0.3,
                        child: Text(
                          '경유지',
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyText2!
                              .copyWith(color: Colors.white70, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                          width: size.width * 0.5,
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              ...layover.map(
                                (e) => Center(
                                    child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    e.id,
                                    style: theme.textTheme.bodyText2!.copyWith(
                                        color: Colors.white70, fontSize: 16),
                                  ),
                                )),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                destinationResultForm(
                    colors: appSubColor,
                    leftTitle: '도착지',
                    rightTitle: endDestination),
              ],
            )
          ],
        ),
      ),
    );
  }

  SizedBox destinationResultForm({
    required Color colors,
    required String leftTitle,
    required String rightTitle,
  }) {
    return SizedBox(
      width: size.width * 0.9,
      height: size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.3,
            child: Text(
              leftTitle,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyText2!
                  .copyWith(color: colors, fontSize: 20),
            ),
          ),
          SizedBox(
            width: size.width * 0.5,
            child: Text(
              rightTitle,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyText2!
                  .copyWith(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
