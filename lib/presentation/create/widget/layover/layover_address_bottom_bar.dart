import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/find_location/find_location_cubit.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';

class LayoverAddressBottomBar extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final bool isLayoverAddressBar;
  final List<TravelResearch> layoverList;
  LayoverAddressBottomBar({
    Key? key,
    required this.isLayoverAddressBar,
    required this.layoverList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List list = [];
    for (final element in layoverList) {
      list.add(element.id);
    }
    return BlocBuilder<FindLocationCubit, FindLocationState>(
      builder: (context, findState) {
        const TravelResearch travel =
            TravelResearch(date: "", time: "", id: "", x: "", y: "");
        return AnimatedContainer(
          width: size.width,
          height: size.height,
          color: Colors.white,
          duration: const Duration(milliseconds: 500),
          transform: Matrix4.translationValues(
              0, isLayoverAddressBar ? 0 : size.height, 0),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Stack(
              children: [
                Positioned(
                    right: 25, top: 20, child: Text('${layoverList.length}/3')),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        context.read<TravelCreateBloc>().add(
                            const TravelCreateEvent
                                .layoverAddressBottomSearched(value: false));
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: SizedBox(
                          width: size.width * 0.9,
                          height: size.height * 0.05,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              ...layoverList.map((e) => InkWell(
                                    onTap: () {
                                      context.read<TravelCreateBloc>()
                                        ..add(TravelCreateEvent.layoverSelected(
                                          layover: travel.copyWith(
                                              id: e.id, x: e.x, y: e.y),
                                        ))
                                        ..add(const TravelCreateEvent
                                                .layoverAddressBottomSearched(
                                            value: false));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 8, left: 8),
                                      child: Stack(
                                        children: [
                                          Container(
                                              height: size.height * 0.05,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(width: 2),
                                              ),
                                              child: Center(
                                                child: Row(
                                                  children: [
                                                    const SizedBox(width: 14),
                                                    Text(
                                                      " ${e.id} ",
                                                      style: theme
                                                          .textTheme.bodyText2!
                                                          .copyWith(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12),
                                                    ),
                                                    const SizedBox(width: 14),
                                                  ],
                                                ),
                                              )),
                                          const Positioned(
                                            right: 1,
                                            top: 2,
                                            child: Icon(
                                              Icons.remove_circle,
                                              color: Colors.white,
                                              size: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ))
                            ],
                          )),
                    ),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ...findState.location.map(
                            (data) => InkWell(
                              onTap: () {
                                if (layoverList.length > 2) {
                                  print('최대 선택 개수 초과 스낵바');
                                }
                                context.read<TravelCreateBloc>()
                                  ..add(TravelCreateEvent.layoverSelected(
                                    layover: travel.copyWith(
                                        id: data.place_name,
                                        x: data.x,
                                        y: data.y),
                                  ))
                                  ..add(const TravelCreateEvent
                                          .layoverAddressBottomSearched(
                                      value: false));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8, bottom: 8, left: 30, right: 30),
                                child: Container(
                                  width: size.width * 0.9,
                                  height: size.height * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: list.contains(data.place_name)
                                          ? Border.all(
                                              color: appColor, width: 2)
                                          : Border.all(
                                              color: const Color.fromRGBO(
                                                  215, 215, 215, 1))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data.place_name,
                                          style: theme.textTheme.bodyText2!
                                              .copyWith(
                                                  fontSize: 14,
                                                  color: Colors.black),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          data.road_address_name!.isEmpty
                                              ? data.address_name
                                              : data.road_address_name!,
                                          style: theme.textTheme.bodyText2!
                                              .copyWith(
                                                  fontSize: 12,
                                                  color: const Color.fromRGBO(
                                                      195, 195, 195, 1)),
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
