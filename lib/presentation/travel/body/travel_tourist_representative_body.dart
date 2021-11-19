import 'package:another_flushbar/flushbar_helper.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/presentation/travel/travel_local_data/representative_tourist.dart';

class TravelTouristRepresentative extends StatelessWidget {
  final String startId;
  final String endId;
  final List<String> layoverId;
  final int selectedToggleIndex;
  const TravelTouristRepresentative({
    Key? key,
    required this.startId,
    required this.endId,
    required this.layoverId,
    required this.selectedToggleIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5, left: 5),
            child: Text(
              '국내 여행지',
              style: theme.textTheme.bodyText2!.copyWith(fontSize: 15),
            ),
          ),
          GridView(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
              childAspectRatio: 1.5,
            ),
            children: [
              ...representativeTourist.map((e) => InkWell(
                    onTap: () {
                      if (selectedToggleIndex == 0) {
                        context
                            .read<TravelCreateBloc>()
                            .add(TravelCreateEvent.startDestinationSelected(
                              x: e.entries.elementAt(1).value,
                              y: e.entries.elementAt(2).value,
                              id: e.entries.elementAt(0).value,
                              placeName: e.entries.elementAt(3).value,
                            ));
                      } else if (selectedToggleIndex == 1) {
                        context
                            .read<TravelCreateBloc>()
                            .add(TravelCreateEvent.endDestinationSelected(
                              x: e.entries.elementAt(1).value,
                              y: e.entries.elementAt(2).value,
                              id: e.entries.elementAt(0).value,
                              placeName: e.entries.elementAt(3).value,
                            ));
                      } else if (selectedToggleIndex == 2 &&
                          layoverId.length < 3) {
                        context
                            .read<TravelCreateBloc>()
                            .add(TravelCreateEvent.layoverSelected(
                                layover: travel.copyWith(
                              date: "",
                              time: "",
                              x: e.entries.elementAt(1).value,
                              y: e.entries.elementAt(2).value,
                              id: e.entries.elementAt(0).value,
                              placeName: e.entries.elementAt(3).value,
                            )));
                      } else {
                        FlushbarHelper.createInformation(
                                message: '경유지는 3곳 이상 선택할 수 없습니다')
                            .show(context);
                      }
                    },
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.black,
                          ),
                          child: Opacity(
                            opacity: 0.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: ExtendedImage.asset(
                                'assets/images/city/city_seoul.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            e.values.elementAt(4),
                            style: theme.textTheme.bodyText2!
                                .copyWith(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
