import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create/animation/create_animation_cubit.dart';
import 'package:flutter_goffer/application/create/cubit/create_image_cubit.dart';
import 'package:flutter_goffer/presentation/create/widget/create_body_widget.dart';
import 'package:flutter_goffer/presentation/create/widget/create_submitted_btn.dart';

class ResultCreateBody extends StatelessWidget {
  final int planIndex;
  const ResultCreateBody({
    Key? key,
    required this.planIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateBodyWidget(
      isShowBackBtn: true,
      onTap: () => context.read<CreateAnimationCubit>().changedPage(
          destination: -size.width, layover: 0, result: size.width),
      widget: SafeArea(
        child: Stack(
          children: [
            createSubmittedBtn(
                title: 'Background Image',
                onTap: () {
                  context
                      .read<CreateImageCubit>()
                      .planImageChanged(index: planIndex);
                }),
            Center(
                child: Text(
              'Result Create',
              style: theme.textTheme.bodyText2!.copyWith(fontSize: 40),
            )),
          ],
        ),
      ),
    );
  }
}
