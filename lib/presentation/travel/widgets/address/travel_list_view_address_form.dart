import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/domain/find_location/find_location.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:flutter_goffer/presentation/travel/travel_local_data/representative_tourist.dart';

class TravelListViewAddressForm extends StatelessWidget {
  final FindLocation data;
  final int selectedIndex;
  final List<TravelResearch> layoverTravel;
  final TravelResearch startTravel;
  final TravelResearch endTravel;
  const TravelListViewAddressForm(
      {Key? key,
      required this.data,
      required this.selectedIndex,
      required this.layoverTravel,
      required this.startTravel,
      required this.endTravel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List selectedList = [];
    for (final element in layoverTravel) {
      selectedList.add(element.id);
    }

    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();

        if (selectedIndex == 0) {
          context.read<TravelCreateBloc>().add(
              TravelCreateEvent.startDestinationSelected(
                  x: data.x,
                  y: data.y,
                  id: data.id,
                  placeName: data.place_name));
        } else if (selectedIndex == 1) {
          context.read<TravelCreateBloc>().add(
              TravelCreateEvent.endDestinationSelected(
                  x: data.x,
                  y: data.y,
                  id: data.id,
                  placeName: data.place_name));
        } else if (selectedIndex == 2) {
          if (layoverTravel.length < 3) {
            context
                .read<TravelCreateBloc>()
                .add(TravelCreateEvent.layoverSelected(
                  layover: travel.copyWith(
                      id: data.id,
                      x: data.x,
                      y: data.y,
                      placeName: data.place_name),
                ));
          } else {
            FlushbarHelper.createInformation(message: '더 이상 경유지를 선택할 수 없습니다')
                .show(context);
          }
        } else {
          context
              .read<TravelCreateBloc>()
              .add(const TravelCreateEvent.addressBottomSearched(value: false));
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
        child: Stack(
          children: [
            Container(
              width: size.width * 0.9,
              height: size.height * 0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: startTravel.id.contains(data.id)
                      ? Border.all(color: appColor, width: 2)
                      : endTravel.id.contains(data.id)
                          ? Border.all(color: appSubColor, width: 2)
                          : selectedList.contains(data.id)
                              ? Border.all(color: Colors.deepPurple, width: 2)
                              : Border.all(
                                  color:
                                      const Color.fromRGBO(135, 135, 135, 1))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data.place_name,
                      style: theme.textTheme.bodyText2!
                          .copyWith(fontSize: 14, color: Colors.black),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      data.road_address_name!.isEmpty
                          ? data.address_name
                          : data.road_address_name!,
                      style: theme.textTheme.bodyText2!.copyWith(
                          fontSize: 12,
                          color: const Color.fromRGBO(195, 195, 195, 1)),
                    ),
                  ],
                ),
              ),
            ),
            if (startTravel.id.contains(data.id)) ...[
              Positioned(
                  top: 10,
                  left: 10,
                  child: Text(
                    '출발지',
                    style: theme.textTheme.bodyText2!.copyWith(
                        color: appColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )),
            ],
            if (endTravel.id.contains(data.id)) ...[
              Positioned(
                  top: 30,
                  left: 10,
                  child: Text(
                    '도착지',
                    style: theme.textTheme.bodyText2!.copyWith(
                        color: appSubColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )),
            ],
            if (selectedList.contains(data.id)) ...[
              Positioned(
                  top: 10,
                  right: 10,
                  child: Text(
                    '경유지',
                    style: theme.textTheme.bodyText2!.copyWith(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )),
            ],
          ],
        ),
      ),
    );
  }
}
