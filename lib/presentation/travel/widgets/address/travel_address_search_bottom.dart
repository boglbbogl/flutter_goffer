import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/find_location/find_location_cubit.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:flutter_goffer/presentation/travel/widgets/address/travel_shimmer_address_form.dart';

class TravelAddressSearchBottom extends StatelessWidget {
  final bool isAddressSearchBar;
  final TravelResearch startTravel;
  final TravelResearch endTravel;
  final List<TravelResearch> layoverTravel;
  final TextEditingController _controller = TextEditingController();

  TravelAddressSearchBottom({
    Key? key,
    required this.isAddressSearchBar,
    required this.startTravel,
    required this.endTravel,
    required this.layoverTravel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List selectedList = [];
    selectedList.add(startTravel.id);
    for (final element in layoverTravel) {
      selectedList.add(element.id);
      selectedList.add(startTravel.id);
      selectedList.add(startTravel.id);
    }
    const TravelResearch travel =
        TravelResearch(date: "", time: "", id: "", x: "", y: "");
    return BlocBuilder<FindLocationCubit, FindLocationState>(
      builder: (context, state) {
        return AnimatedContainer(
          color: Colors.white,
          transform: Matrix4.translationValues(
              0, isAddressSearchBar ? 0 : size.height, 0),
          duration: const Duration(milliseconds: 300),
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        context.read<TravelCreateBloc>().add(
                            const TravelCreateEvent.addressBottomSearched(
                                value: false));
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.8,
                      // height: size.height * 0.1,
                      child: TextFormField(
                        controller: _controller,
                        style: theme.textTheme.bodyText2!
                            .copyWith(color: Colors.black),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                FocusScope.of(context).unfocus();
                                context
                                    .read<FindLocationCubit>()
                                    .apiFindLocation(keyWord: _controller.text);
                              },
                              icon: const Icon(
                                Icons.search_rounded,
                                color: Color.fromRGBO(71, 71, 71, 1),
                              ),
                            ),
                            hintText: '  장소를 입력해주세요',
                            hintStyle: theme.textTheme.bodyText2!.copyWith(
                                color: const Color.fromRGBO(135, 135, 135, 1),
                                fontSize: 14)),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.85,
                      child: Row(
                        children: [
                          const Icon(Icons.error_outline,
                              size: 16,
                              color: Color.fromRGBO(155, 155, 155, 1)),
                          Text(
                            '경유지는 최대 3개 까지 추가할 수 있습니다',
                            style: theme.textTheme.bodyText2!.copyWith(
                                color: const Color.fromRGBO(155, 155, 155, 1),
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        child: state.isLoading
                            ? shimmerAddressForm()
                            : ListView(
                                shrinkWrap: true,
                                children: [
                                  ...state.location.map(
                                    (data) => InkWell(
                                      onTap: () {
                                        context.read<TravelCreateBloc>()
                                          ..add(
                                              TravelCreateEvent.layoverSelected(
                                            layover: travel.copyWith(
                                                id: data.place_name,
                                                x: data.x,
                                                y: data.y),
                                          ))
                                          ..add(const TravelCreateEvent
                                                  .addressBottomSearched(
                                              value: false));
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8,
                                            bottom: 8,
                                            left: 30,
                                            right: 30),
                                        child: Container(
                                          width: size.width * 0.9,
                                          height: size.height * 0.1,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              border: selectedList
                                                      .contains(data.place_name)
                                                  ? Border.all(
                                                      color: appColor, width: 2)
                                                  : Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              215,
                                                              215,
                                                              215,
                                                              1))),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  data.place_name,
                                                  style: theme
                                                      .textTheme.bodyText2!
                                                      .copyWith(
                                                          fontSize: 14,
                                                          color: Colors.black),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  data.road_address_name!
                                                          .isEmpty
                                                      ? data.address_name
                                                      : data.road_address_name!,
                                                  style: theme
                                                      .textTheme.bodyText2!
                                                      .copyWith(
                                                          fontSize: 12,
                                                          color: const Color
                                                                  .fromRGBO(195,
                                                              195, 195, 1)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
