import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/find_location/find_location_cubit.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:flutter_goffer/presentation/travel/widgets/address/location_select_toggle_button.dart';
import 'package:flutter_goffer/presentation/travel/widgets/address/travel_list_view_address_form.dart';
import 'package:flutter_goffer/presentation/travel/widgets/address/travel_shimmer_address_form.dart';
import 'package:flutter_goffer/presentation/travel/body/travel_main_location_toggle_body.dart';

class TravelAddressSearchBottom extends StatelessWidget {
  final bool isAddressSearchBar;
  final TravelCourse startTravel;
  final TravelCourse endTravel;
  final List<TravelCourse> layoverTravel;
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  TravelAddressSearchBottom({
    Key? key,
    required this.isAddressSearchBar,
    required this.startTravel,
    required this.endTravel,
    required this.layoverTravel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      width: size.width * 0.85,
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
                                    .localFindLocation(
                                        keyWord: _controller.text);
                              },
                              icon: const Icon(
                                Icons.search_rounded,
                                color: Color.fromRGBO(71, 71, 71, 1),
                              ),
                            ),
                            hintText: ' 장소를 입력해주세요',
                            hintStyle: theme.textTheme.bodyText2!.copyWith(
                                color: const Color.fromRGBO(135, 135, 135, 1),
                                fontSize: 14)),
                      ),
                    ),
                    LocationSelectToggleButton(
                        selectedIndex: state.selectedIndex),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        context
                            .read<FindLocationCubit>()
                            .selectedLocationBar(index: 1);
                      },
                      child: SizedBox(
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
                    ),
                    Expanded(
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        child: state.isLoading
                            ? shimmerAddressForm()
                            : ListView(
                                controller: _scrollController,
                                shrinkWrap: true,
                                children: [
                                  ...state.location.map(
                                    (data) => TravelListViewAddressForm(
                                      data: data,
                                      selectedIndex: state.selectedIndex,
                                      startTravel: startTravel,
                                      endTravel: endTravel,
                                      layoverTravel: layoverTravel,
                                    ),
                                  ),
                                  if (state.isMore)
                                    _listViewMoreButtonForm(
                                        context: context,
                                        title: '원하는 검색 결과가 없으신가요 ?',
                                        widget: IconButton(
                                            onPressed: () {
                                              if (_controller.text.isEmpty) {
                                              } else {
                                                _scrollController.animateTo(0,
                                                    duration: const Duration(
                                                        milliseconds: 300),
                                                    curve: Curves.ease);
                                                context
                                                    .read<FindLocationCubit>()
                                                    .apiFindLocation(
                                                        keyWord:
                                                            _controller.text);
                                              }
                                            },
                                            icon: const Icon(Icons.add_circle,
                                                color: Color.fromRGBO(
                                                    135, 135, 135, 1))))
                                  else
                                    _listViewMoreButtonForm(
                                        context: context,
                                        title: '검색 결과가 없습니다...',
                                        widget: Container())
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

  Container _listViewMoreButtonForm({
    required BuildContext context,
    required String title,
    required Widget widget,
  }) {
    return Container(
        width: size.width * 0.9,
        height: size.height * 0.07,
        color: Colors.white,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: theme.textTheme.bodyText2!
                  .copyWith(color: const Color.fromRGBO(135, 135, 135, 1)),
            ),
            widget
          ],
        )));
  }
}
