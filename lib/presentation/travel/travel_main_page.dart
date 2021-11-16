import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/presentation/travel/body/travel_address_search_body.dart';
import 'package:flutter_goffer/presentation/travel/body/travel_date_and_time_body.dart';
import 'package:flutter_goffer/presentation/travel/widgets/address/travel_address_search_bottom.dart';
import 'package:flutter_goffer/presentation/travel/widgets/date/travel_date_and_time_bottom.dart';

class TravelMainPage extends StatelessWidget {
  final bool dateAndTimeExpandable;
  const TravelMainPage({
    Key? key,
    required this.dateAndTimeExpandable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TravelCreateBloc, TravelCreateState>(
      builder: (context, state) {
        return SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: size.height * 0.02),
                  TravelDateAndTimeBody(
                    isAddressSearchBar: state.isDateAndTimeSearchBar,
                    startDate: state.startTravel!.date,
                    endDate: state.endTravel!.date,
                  ),
                  SizedBox(height: size.height * 0.01),
                  const TravelAddressSearchBody(),
                ],
              ),
              TravelDateAndTimeBottom(
                dateAndTimeExpandable: dateAndTimeExpandable,
                isDateAndTimeSearchBar: state.isDateAndTimeSearchBar,
                startTravel: state.startTravel!,
                endTravel: state.endTravel!,
              ),
              TravelAddressSearchBottom(
                isAddressSearchBar: state.isAddressSearchBar,
                startTravel: state.startTravel!,
                endTravel: state.endTravel!,
                layoverTravel: state.wayTravel,
              ),
            ],
          ),
        );
      },
    );
  }
}
