import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/logger.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/find_location/find_location_cubit.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';

class CreateAddLayoverPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final List<TravelResearch> layover;
  CreateAddLayoverPage({
    Key? key,
    required this.layover,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const TravelResearch travel =
        TravelResearch(date: "", time: "", id: "", x: "", y: "");
    return BlocBuilder<FindLocationCubit, FindLocationState>(
      builder: (context, state) {
        final List<TravelResearch> list = [];

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              automaticallyImplyLeading: false,
              title: Text(
                '경유지 추가하기',
                style: theme.textTheme.bodyText2!
                    .copyWith(color: appColor, fontSize: 18),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    context.read<TravelCreateBloc>().add(
                        const TravelCreateEvent.showLayoverScreen(
                            value: false));
                  },
                  icon: Icon(
                    Icons.clear_outlined,
                    color: appColor,
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: appColor,
                    thickness: 2,
                  ),
                ),
                SizedBox(
                    height: size.height * 0.1,
                    width: size.width,
                    child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...list.map(
                            (e) => Text(e.id,
                                style: theme.textTheme.bodyText2!.copyWith(
                                  color: Colors.white,
                                  fontSize: 12,
                                )),
                          ),
                        ])),
                SizedBox(
                  width: size.width * 0.8,
                  height: size.height * 0.07,
                  child: TextFormField(
                    controller: _controller,
                    style: theme.textTheme.bodyText2!
                        .copyWith(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                            context
                                .read<FindLocationCubit>()
                                .apiFindLocation(keyWord: _controller.text);
                          },
                          icon: Icon(
                            Icons.search_rounded,
                            color: appColor,
                          ),
                        ),
                        hintText: '  주소를 입력해주세요',
                        hintStyle: theme.textTheme.bodyText2!
                            .copyWith(color: appColor, fontSize: 12)),
                  ),
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      ...state.location.map(
                        (data) => InkWell(
                          onTap: () {
                            // layover.add(travel.copyWith(
                            //     id: data.id, x: data.x, y: data.y));
                            // list.addAll(layover);
                            list.add(travel.copyWith(
                                id: data.id, x: data.x, y: data.y));
                            layover.add(travel.copyWith(
                                id: data.id, x: data.x, y: data.y));
                            logger.d('list:$list');
                            logger.d('layover:$layover');

                            // context.read<TravelCreateBloc>().add(
                            //     TravelCreateEvent.layoverSelected(
                            //         layover: list));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 8, left: 30, right: 30),
                            child: Container(
                              width: size.width * 0.9,
                              height: size.height * 0.1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: const Color.fromRGBO(
                                          215, 215, 215, 1))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      data.place_name,
                                      style: theme.textTheme.bodyText2!
                                          .copyWith(
                                              fontSize: 14, color: appColor),
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
          ),
        );
      },
    );
  }
}
