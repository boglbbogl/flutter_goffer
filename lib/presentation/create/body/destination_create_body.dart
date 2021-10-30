import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create/animation/create_animation_cubit.dart';
import 'package:flutter_goffer/presentation/create/widget/create_body_widget.dart';

class DestinationCreateBody extends StatelessWidget {
  const DestinationCreateBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateBodyWidget(
      onTap: () {
        context.read<CreateAnimationCubit>().changedPage(
            destination: -size.width, layover: 0, result: size.width);
      },
      widget: Center(
          child: Text(
        'Destination Create',
        style: theme.textTheme.bodyText2!.copyWith(fontSize: 40),
      )),
    );
  }
}
