import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/presentation/create/body/destination_create_body.dart';
import 'package:flutter_goffer/presentation/create/body/layover_create_body.dart';
import 'package:flutter_goffer/presentation/create/body/result_create_body.dart';

class CreateMatrixSliderPage extends StatelessWidget {
  final double destinationPosition;
  final double layoverPosition;
  final double resultPosition;
  const CreateMatrixSliderPage({
    Key? key,
    required this.destinationPosition,
    required this.layoverPosition,
    required this.resultPosition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // willpopscope
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            _animationWidget(
                context: context,
                xPosition: destinationPosition,
                images: 'assets/images/cappadocia_first.jpg',
                widget: const DestinationCreateBody()),
            _animationWidget(
                context: context,
                xPosition: layoverPosition,
                images: 'assets/images/cappadocia_second.jpg',
                widget: const LayoverCreateBody()),
            _animationWidget(
                context: context,
                xPosition: resultPosition,
                images: 'assets/images/cappadocia_third.jpg',
                widget: const ResultCreateBody()),
          ],
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
      duration: const Duration(milliseconds: 1000),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: SizedBox(
              width: size.width,
              height: size.height,
              child: Image(
                image: AssetImage(images),
                fit: BoxFit.cover,
              ),
            ),
          ),
          widget,
        ],
      ),
    );
  }
}
