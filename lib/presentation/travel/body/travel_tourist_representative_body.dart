import 'package:another_flushbar/flushbar_helper.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/animation/travel_animation_cubit.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/presentation/travel/travel_local_data/representative_tourist.dart';
import 'package:flutter_goffer/presentation/travel/travel_route_research_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class TravelTouristRepresentativeBody extends StatelessWidget {
  final int layoverLength;
  const TravelTouristRepresentativeBody({
    Key? key,
    required this.layoverLength,
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
                      context
                          .read<TravelCreateBloc>()
                          .add(const TravelCreateEvent.initialData());
                      pushNewScreen(context,
                          screen: TravelRouteResearchScreen(
                            x: e.entries.elementAt(1).value,
                            y: e.entries.elementAt(2).value,
                            id: e.entries.elementAt(0).value,
                            placeName: e.entries.elementAt(3).value,
                          ));
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: size.width * 0.3,
                          height: size.height * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.black54,
                          ),
                          child: Opacity(
                            opacity: 0.6,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: ExtendedImage.asset(
                                e.values.elementAt(5),
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
