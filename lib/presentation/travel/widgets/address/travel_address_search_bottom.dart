import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/find_location/find_location_cubit.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/presentation/travel/widgets/address/travel_list_view_address_form.dart';
import 'package:flutter_goffer/presentation/travel/widgets/address/travel_shimmer_address_form.dart';

class TravelAddressSearchBottom extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  TravelAddressSearchBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FindLocationCubit, FindLocationState>(
      builder: (context, state) {
        return AnimatedContainer(
          color: Colors.white,
          transform: Matrix4.translationValues(
              0,
              context.watch<TravelCreateBloc>().state.isAddressSearchBar
                  ? 0
                  : size.height,
              0),
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
                            hintText: ' ????????? ??????????????????',
                            hintStyle: theme.textTheme.bodyText2!.copyWith(
                                color: const Color.fromRGBO(135, 135, 135, 1),
                                fontSize: 14)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context
                            .read<FindLocationCubit>()
                            .selectedLocationBar(index: 1);
                      },
                      child: SizedBox(
                        width: size.width * 0.85,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.error_outline,
                                    size: 16,
                                    color: Color.fromRGBO(155, 155, 155, 1)),
                                Text(
                                  '???????????? ?????? 3??? ?????? ????????? ??? ????????????',
                                  style: theme.textTheme.bodyText2!.copyWith(
                                      color: const Color.fromRGBO(
                                          155, 155, 155, 1),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            Text(
                                "${context.watch<TravelCreateBloc>().state.wayTravel.length}/3",
                                style: theme.textTheme.bodyText2!.copyWith(
                                    color:
                                        const Color.fromRGBO(155, 155, 155, 1),
                                    fontSize: 12)),
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
                                    ),
                                  ),
                                  if (state.isMore)
                                    _listViewMoreButtonForm(
                                        context: context,
                                        title: '????????? ?????? ????????? ??????????????? ?',
                                        onTap: () {
                                          if (_controller.text.isEmpty) {
                                          } else {
                                            _scrollController.animateTo(0,
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                curve: Curves.ease);
                                            context
                                                .read<FindLocationCubit>()
                                                .apiFindLocation(
                                                    keyWord: _controller.text);
                                          }
                                        },
                                        widget: state.isLoading
                                            ? const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child:
                                                    CupertinoActivityIndicator(),
                                              )
                                            : const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: Icon(Icons.add_circle,
                                                    color: Color.fromRGBO(
                                                        135, 135, 135, 1)),
                                              ))
                                  else if (state.location.isEmpty)
                                    _listViewMoreButtonForm(
                                        context: context,
                                        title: '?????? ????????? ????????????...',
                                        onTap: () {},
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
    required Function() onTap,
  }) {
    return Container(
        width: size.width * 0.9,
        height: size.height * 0.07,
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
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
          )),
        ));
  }
}
