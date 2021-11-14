import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/find_location/find_location_cubit.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/domain/find_location/find_location.dart';
import 'package:flutter_goffer/presentation/create/widget/shimmer_address_form.dart';

class DestinationAddressListView extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController controller;
  final bool isColorChanged;
  final bool isMore;
  final bool isLoading;
  final List<FindLocation> location;

  DestinationAddressListView({
    Key? key,
    required this.location,
    required this.controller,
    required this.isMore,
    required this.isLoading,
    required this.isColorChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (location.isEmpty) {
      return Column(
        children: [
          const SizedBox(height: 50),
          Text(
            '검색 결과가 없습니다',
            style: theme.textTheme.bodyText2!
                .copyWith(color: const Color.fromRGBO(115, 115, 115, 1)),
          ),
        ],
      );
    }
    return FutureBuilder(
        future: Future.delayed(const Duration(milliseconds: 2000)),
        builder: (context, snapshot) {
          return Expanded(
            child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: (snapshot.connectionState == ConnectionState.done)
                    ? ListView(
                        controller: _scrollController,
                        shrinkWrap: true,
                        children: [
                          ...location.map((data) => InkWell(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  if (!isColorChanged) {
                                    context.read<TravelCreateBloc>()
                                      ..add(TravelCreateEvent
                                          .startDestinationSelected(
                                              x: data.x,
                                              y: data.y,
                                              id: data.id,
                                              destination: data.place_name))
                                      ..add(const TravelCreateEvent
                                          .addressBottomSearched(value: false))
                                      ..add(const TravelCreateEvent
                                          .destinationToggleSwitched());
                                  } else if (isColorChanged) {
                                    context.read<TravelCreateBloc>()
                                      ..add(TravelCreateEvent
                                          .endDestinationSelected(
                                              x: data.x,
                                              y: data.y,
                                              id: data.id,
                                              destination: data.place_name))
                                      ..add(const TravelCreateEvent
                                          .addressBottomSearched(value: false));
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8, bottom: 8, left: 18, right: 18),
                                  child: Container(
                                    width: size.width * 0.9,
                                    height: size.height * 0.1,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: const Color.fromRGBO(
                                                195, 195, 195, 1))),
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
                                                    color: isColorChanged
                                                        ? appSubColor
                                                        : appColor),
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
                                                        135, 135, 135, 1)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                          if (isMore) ...[
                            TextButton(
                              onPressed: () {
                                FocusScope.of(context).unfocus();
                                context
                                    .read<FindLocationCubit>()
                                    .apiFindLocation(keyWord: controller.text);

                                _scrollController.animateTo(0,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease);
                              },
                              child: Text(
                                '검색 결과 더보기...',
                                style: theme.textTheme.bodyText2!.copyWith(
                                    color:
                                        const Color.fromRGBO(115, 115, 115, 1)),
                              ),
                            ),
                          ],
                        ],
                      )
                    : shimmerAddressForm()),
          );
        });
  }
}
