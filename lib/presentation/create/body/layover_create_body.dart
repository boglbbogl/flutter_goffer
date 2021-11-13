import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/animation/travel_animation_cubit.dart';
import 'package:flutter_goffer/domain/find_location/find_location.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:flutter_goffer/presentation/create/screen/create_add_layover_page.dart';
import 'package:flutter_goffer/presentation/create/widget/create_body_widget.dart';
import 'package:flutter_goffer/presentation/create/widget/create_submitted_btn.dart';
import 'package:flutter_goffer/presentation/create/widget/flow_result_widget.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class LayoverCreateBody extends StatelessWidget {
  final TravelResearch startTravel;
  final TravelResearch endTravel;
  final String startDestination;
  final String endDestination;
  const LayoverCreateBody({
    Key? key,
    required this.startTravel,
    required this.endTravel,
    required this.startDestination,
    required this.endDestination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateBodyWidget(
      isShowBackBtn: true,
      onTap: () => context
          .read<TravelAnimationCubit>()
          .changedPage(destination: 0, layover: size.width, result: size.width),
      widget: SafeArea(
        child: Stack(
          children: [
            createSubmittedBtn(
                title: '경로 만들기',
                onTap: () {
                  context.read<TravelAnimationCubit>().changedPage(
                      destination: -size.width,
                      layover: -size.width,
                      result: 0);
                }),
            Column(
              children: [
                const SizedBox(height: 80),
                dateAndTimeFlowResutl(
                  startTravel: startTravel,
                  endTravel: endTravel,
                ),
                const SizedBox(height: 30),
                destinationFlowResult(
                  start: startDestination,
                  end: endDestination,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Icon(
                    Icons.more_vert_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {
                    pushNewScreen(context,
                        screen: CreateAddLayoverPage(),
                        withNavBar: false,
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: size.width * 0.8,
                      height: size.height * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '경유지 추가하기(선택 3)',
                            style: theme.textTheme.bodyText2!
                                .copyWith(color: appColor, fontSize: 22),
                          ),
                          Icon(
                            Icons.add_circle_rounded,
                            color: appColor,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
