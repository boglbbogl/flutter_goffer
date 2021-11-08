import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create/cubit/create_image_cubit.dart';
import 'package:flutter_goffer/domain/create_plan.dart';
import 'package:flutter_goffer/injection.dart';
import 'package:flutter_goffer/presentation/create/body/destination_create_body.dart';
import 'package:flutter_goffer/presentation/create/body/layover_create_body.dart';
import 'package:flutter_goffer/presentation/create/body/result_create_body.dart';

class CreateMatrixSliderPage extends StatelessWidget {
  final double destinationPosition;
  final double layoverPosition;
  final double resultPosition;
  final CreatePlan plan;
  final bool isColorChanged;
  final bool isAddressSearchBar;
  const CreateMatrixSliderPage({
    Key? key,
    required this.destinationPosition,
    required this.layoverPosition,
    required this.resultPosition,
    required this.plan,
    required this.isColorChanged,
    required this.isAddressSearchBar,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // willpopscope
    return BlocProvider(
      create: (context) => getIt<CreateImageCubit>()..start(),
      child: BlocBuilder<CreateImageCubit, CreateImageState>(
        builder: (context, state) {
          return WillPopScope(
            onWillPop: () async => false,
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: const Color.fromRGBO(31, 31, 31, 1),
                body: Stack(
                  children: [
                    _animationWidget(
                        context: context,
                        xPosition: destinationPosition,
                        images: 'assets/images/${state.planImg}_first.jpg',
                        widget: DestinationCreateBody(
                          plan: plan,
                          isColorChanged: isColorChanged,
                          isAddressSearchBar: isAddressSearchBar,
                        )),
                    _animationWidget(
                        context: context,
                        xPosition: layoverPosition,
                        images: 'assets/images/${state.planImg}_second.jpg',
                        widget: const LayoverCreateBody()),
                    _animationWidget(
                        context: context,
                        xPosition: resultPosition,
                        images: 'assets/images/${state.planImg}_third.jpg',
                        widget: ResultCreateBody(
                          planIndex: state.planIndex,
                        )),
                  ],
                ),
              ),
            ),
          );
        },
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
