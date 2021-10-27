import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/application/create_animation_cubit.dart';
import 'package:flutter_goffer/presentation/create/body/date_create_body.dart';
import 'package:flutter_goffer/presentation/create/body/destination_create_body.dart';
import 'package:flutter_goffer/presentation/create/body/layover_create_body.dart';

class CreateMatrixSliderPage extends StatelessWidget {
  final double datePosition;
  final double destinationPosition;
  final double layoverPosition;
  const CreateMatrixSliderPage({
    Key? key,
    required this.datePosition,
    required this.destinationPosition,
    required this.layoverPosition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            _animationWidget(
                context: context,
                xPosition: datePosition,
                onTap: () {
                  context.read<CreateAnimationCubit>().changedPage(
                      date: -size.width, destination: 0, layover: size.width);
                },
                widget: const DateCreateBody()),
            _animationWidget(
                context: context,
                xPosition: destinationPosition,
                onTap: () {
                  context.read<CreateAnimationCubit>().changedPage(
                      date: -size.width, destination: -size.width, layover: 0);
                },
                widget: const DestinationCreateBody()),
            _animationWidget(
                context: context,
                xPosition: layoverPosition,
                onTap: () {},
                widget: const LayoverCreateBody()),
          ],
        ),
      ),
    );
  }

  AnimatedContainer _animationWidget({
    required BuildContext context,
    required double xPosition,
    required Function() onTap,
    required Widget widget,
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
                image: AssetImage('assets/images/create_main.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          widget,
          // Center(
          //     child: Text(
          //   'first',
          //   style: theme.textTheme.bodyText2!.copyWith(fontSize: 80),
          // )),
          // Positioned(
          //   bottom: 30,
          //   right: 30,
          //   child: InkWell(
          //     onTap: onTap,
          //     child: Container(
          //       width: size.width * 0.3,
          //       height: size.height * 0.07,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(12), color: appColor),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
