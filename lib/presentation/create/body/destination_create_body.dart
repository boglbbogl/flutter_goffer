import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create/animation/create_animation_cubit.dart';
import 'package:flutter_goffer/application/create/plan/create_plan_bloc.dart';
import 'package:flutter_goffer/domain/create_plan.dart';
import 'package:flutter_goffer/presentation/create/widget/address_search_bottom_bar.dart';
import 'package:flutter_goffer/presentation/create/widget/create_body_widget.dart';
import 'package:flutter_goffer/presentation/create/widget/destination_toggle_switch.dart';
import 'package:flutter_goffer/presentation/create/widget/flow_result_widget.dart';

class DestinationCreateBody extends StatelessWidget {
  final CreatePlan plan;
  final bool isDestinationSwitch;
  final bool isAddressSearchBar;
  const DestinationCreateBody({
    Key? key,
    required this.plan,
    required this.isDestinationSwitch,
    required this.isAddressSearchBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateBodyWidget(
      isAddressSearchBar: isAddressSearchBar,
      btnText: '경유지 선택하러 가기',
      onTap: () {
        context.read<CreateAnimationCubit>().changedPage(
            destination: -size.width, layover: 0, result: size.width);
      },
      widget: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 50),
                dateAndTimeFlowResutl(plan: plan),
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
                        children: const [
                          Text('출발지를 알려주세요'),
                          SizedBox(height: 20),
                          Text('도착지를 알려주세요'),
                        ],
                      ),
                    ),
                  ),
                ),
                destinationToggleSwitch(
                  isToggle: isDestinationSwitch,
                  onTap: () => context
                      .read<CreatePlanBloc>()
                      .add(const CreatePlanEvent.destinationToggleSwitched()),
                ),
                InkWell(
                  onTap: () {
                    context.read<CreatePlanBloc>().add(
                        const CreatePlanEvent.addressBottomSearched(
                            value: true));
                  },
                  child: Container(
                    width: size.width * 0.8,
                    height: size.height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 2, color: appColor),
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
                              !isDestinationSwitch
                                  ? "출발지를 입력해 주세요"
                                  : "도착지를 입력해 주세요",
                              style: theme.textTheme.bodyText2!.copyWith(
                                  color: const Color.fromRGBO(155, 155, 155, 1),
                                  fontSize: 12),
                            ),
                          ),
                          const Icon(
                            Icons.search_rounded,
                            color: Color.fromRGBO(155, 155, 155, 1),
                            size: 28,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            AdressSearchBottomBar(isAddressSearchBar: isAddressSearchBar),
          ],
        ),
      ),
    );
  }
}
