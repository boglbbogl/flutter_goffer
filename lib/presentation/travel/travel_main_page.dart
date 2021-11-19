import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:flutter_goffer/presentation/travel/body/travel_address_search_body.dart';
import 'package:flutter_goffer/presentation/travel/body/travel_date_and_time_body.dart';
import 'package:flutter_goffer/presentation/travel/body/travel_destination_icon_body.dart';
import 'package:flutter_goffer/presentation/travel/body/travel_tourist_representative_body.dart';
import 'package:flutter_goffer/presentation/travel/widgets/address/travel_address_search_bottom.dart';
import 'package:flutter_goffer/presentation/travel/widgets/date/travel_date_and_time_bottom.dart';
import 'package:flutter_goffer/presentation/travel/body/travel_main_location_toggle_body.dart';
import 'package:flutter_goffer/presentation/travel/widgets/travel_submitted_button.dart';

class TravelMainPage extends StatelessWidget {
  final bool dateAndTimeExpandable;
  const TravelMainPage({
    Key? key,
    required this.dateAndTimeExpandable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TravelCreateBloc, TravelCreateState>(
      listenWhen: (c, p) => c.submitResult != p.submitResult,
      listener: (context, state) {
        state.submitResult!.fold(
            (l) => FlushbarHelper.createError(
                    message: l.map(
                  notFound: (e) => '뭔가가 잘못됨',
                  serverError: (e) => '서버에러',
                )).show(context),
            (r) => FlushbarHelper.createSuccess(message: '성공').show(context));
      },
      builder: (context, state) {
        final List<TravelCourse> travelList = [];
        travelList
          ..add(state.startTravel!)
          ..add(state.endTravel!)
          ..addAll(state.wayTravel);
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
                  if (travelList.first.id.isNotEmpty ||
                      travelList.last.id.isNotEmpty) ...[
                    TravelDestinationIconBody(
                      travelList: travelList,
                      startId: state.startTravel!.id,
                      endId: state.endTravel!.id,
                    ),
                  ],
                  SizedBox(height: size.height * 0.01),
                  const TravelAddressSearchBody(),
                  SizedBox(height: size.height * 0.01),
                  TravelMainLocationToggleBody(
                      selectedIndex: state.selectedTogglButtonIndex),
                  SizedBox(height: size.height * 0.02),
                  TravelTouristRepresentative(
                    startId: state.startTravel!.id,
                    endId: state.endTravel!.id,
                    layoverId: state.wayTravel.map((e) => e.id).toList(),
                    selectedToggleIndex: state.selectedTogglButtonIndex,
                  ),
                ],
              ),
              TravelSubmittedButton(
                  startId: state.startTravel!.id, endId: state.endTravel!.id),
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
