import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/presentation/create/body/destination_create_body.dart';
import 'package:flutter_goffer/presentation/create/body/layover_create_body.dart';
import 'package:flutter_goffer/presentation/create/body/result_create_body.dart';

class CreateMatrixSliderPage extends StatelessWidget {
  final double destinationPosition;
  final double layoverPosition;
  final double resultPosition;
  final bool isColorChanged;
  final TravelCreateState state;
  final bool isAddressSearchBar;
  const CreateMatrixSliderPage({
    Key? key,
    required this.destinationPosition,
    required this.layoverPosition,
    required this.resultPosition,
    required this.state,
    required this.isColorChanged,
    required this.isAddressSearchBar,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // willpopscope
    return WillPopScope(
      onWillPop: () async => false,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color.fromRGBO(71, 71, 71, 1),
          body: Stack(
            children: [
              _animationWidget(
                  context: context,
                  xPosition: destinationPosition,
                  images: 'assets/images/slide/city_night_first.jpg',
                  widget: DestinationCreateBody(
                    startTravel: state.startTravel!,
                    endTravel: state.endTravel!,
                    isColorChanged: isColorChanged,
                    isAddressSearchBar: isAddressSearchBar,
                    startDestination: state.startDestination,
                    endDestination: state.endDestination,
                  )),
              _animationWidget(
                  context: context,
                  xPosition: layoverPosition,
                  images: 'assets/images/slide/city_night_second.jpg',
                  widget: LayoverCreateBody(
                    startTravel: state.startTravel!,
                    endTravel: state.endTravel!,
                    startDestination: state.startDestination,
                    endDestination: state.endDestination,
                    layover: state.wayTravel,
                    isLayoverAddressBar: state.isLayoverAddressBar,
                  )),
              _animationWidget(
                  context: context,
                  xPosition: resultPosition,
                  images: 'assets/images/slide/city_night_third.jpg',
                  widget: ResultCreateBody(
                    startTravel: state.startTravel!,
                    endTravel: state.endTravel!,
                    startDestination: state.startDestination,
                    endDestination: state.endDestination,
                    layover: state.wayTravel,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer _animationWidget({
    required BuildContext context,
    required double xPosition,
    required Widget widget,
    required String images,
  }) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xPosition, 0, 0),
      duration: const Duration(milliseconds: 500),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.3,
            child: SizedBox(
                width: size.width,
                height: size.height,
                child: ExtendedImage.asset(
                  images,
                  fit: BoxFit.cover,
                )),
          ),
          widget,
        ],
      ),
    );
  }
}
