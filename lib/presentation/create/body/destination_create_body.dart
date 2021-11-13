import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/animation/travel_animation_cubit.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:flutter_goffer/presentation/create/widget/create_body_widget.dart';
import 'package:flutter_goffer/presentation/create/widget/create_submitted_btn.dart';
import 'package:flutter_goffer/presentation/create/widget/destination/address_search_bottom_bar.dart';
import 'package:flutter_goffer/presentation/create/widget/destination/destination_toggle_switch.dart';
import 'package:flutter_goffer/presentation/create/widget/flow_result_widget.dart';

class DestinationCreateBody extends StatelessWidget {
  final bool isColorChanged;
  final bool isAddressSearchBar;
  final TravelResearch startTravel;
  final TravelResearch endTravel;
  final String startDestination;
  final String endDestination;
  const DestinationCreateBody({
    Key? key,
    required this.isColorChanged,
    required this.isAddressSearchBar,
    required this.startTravel,
    required this.endTravel,
    required this.startDestination,
    required this.endDestination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateBodyWidget(
      isShowBackBtn: false,
      onTap: () {},
      widget: Stack(
        children: [
          if (startTravel.id.isNotEmpty && endTravel.id.isNotEmpty) ...[
            createSubmittedBtn(
                btnColor: isColorChanged ? appSubColor : appColor,
                title: '경유지 만들러 가기',
                onTap: () {
                  context.read<TravelAnimationCubit>().changedPage(
                      destination: -size.width, layover: 0, result: size.width);
                }),
          ],
          Column(
            children: [
              const SizedBox(height: 80),
              dateAndTimeFlowResutl(
                startTravel: startTravel,
                endTravel: endTravel,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: SizedBox(
                  width: size.width * 0.8,
                  child: DefaultTextStyle(
                    style: theme.textTheme.bodyText2!.copyWith(
                        color: appColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                    child: Column(
                      children: [
                        if (!isColorChanged)
                          Text(
                            '출발지를 알려주세요',
                            style: theme.textTheme.bodyText2!
                                .copyWith(color: appColor, fontSize: 20),
                          )
                        else
                          Text(
                            '도착지를 알려주세요',
                            style: theme.textTheme.bodyText2!
                                .copyWith(color: appSubColor, fontSize: 20),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              destinationToggleSwitch(
                isDestinationSwitch: isColorChanged,
                onTap: () => context
                    .read<TravelCreateBloc>()
                    .add(const TravelCreateEvent.destinationToggleSwitched()),
              ),
              InkWell(
                onTap: () {
                  context.read<TravelCreateBloc>().add(
                      const TravelCreateEvent.addressBottomSearched(
                          value: true));
                },
                child: Container(
                  width: size.width * 0.8,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 2,
                        color: isColorChanged ? appSubColor : appColor),
                    color: Colors.white70,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * 0.5,
                          child: Text(
                            !isColorChanged ? "출발지를 입력해 주세요" : "도착지를 입력해 주세요",
                            style: theme.textTheme.bodyText2!.copyWith(
                                color: const Color.fromRGBO(155, 155, 155, 1),
                                fontSize: 12),
                          ),
                        ),
                        Icon(
                          Icons.search_rounded,
                          color: isColorChanged ? appSubColor : appColor,
                          size: 28,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              if (startTravel.id.isNotEmpty) ...[
                destinationForm(title: startDestination),
              ],
              if (endTravel.id.isNotEmpty) ...[
                const Padding(
                  padding: EdgeInsets.only(bottom: 22),
                  child: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white70,
                    size: 40,
                  ),
                ),
                destinationForm(title: endDestination),
              ],
            ],
          ),
          AdressSearchBottomBar(
              isAddressSearchBar: isAddressSearchBar,
              isColorChanged: isColorChanged),
        ],
      ),
    );
  }

  SizedBox destinationForm({
    required String title,
  }) {
    return SizedBox(
      width: size.width * 0.8,
      height: size.height * 0.05,
      child: Text(title,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyText2!
              .copyWith(fontSize: 15, color: Colors.white70)),
    );
  }
}
