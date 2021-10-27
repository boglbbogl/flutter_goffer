import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create_animation_cubit.dart';
import 'package:flutter_goffer/presentation/create/widget/create_body_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DateCreateBody extends StatelessWidget {
  const DateCreateBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateBodyWidget(
      onTap: () {
        context.read<CreateAnimationCubit>().changedPage(
            date: -size.width,
            destination: 0,
            layover: size.width,
            result: size.width);
      },
      widget: Center(
          child: Text(
        'Date Create',
        style: theme.textTheme.bodyText2!.copyWith(fontSize: 40),
      )),
    );
  }
}
