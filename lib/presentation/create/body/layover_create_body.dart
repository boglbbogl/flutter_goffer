import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create/animation/create_animation_cubit.dart';
import 'package:flutter_goffer/presentation/create/widget/create_body_widget.dart';
import 'package:flutter_goffer/presentation/create/widget/create_submitted_btn.dart';

class LayoverCreateBody extends StatelessWidget {
  const LayoverCreateBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateBodyWidget(
      isShowBackBtn: true,
      onTap: () => context
          .read<CreateAnimationCubit>()
          .changedPage(destination: 0, layover: size.width, result: size.width),
      widget: SafeArea(
        child: Stack(
          children: [
            createSubmittedBtn(
                title: '경로 만들기',
                onTap: () {
                  context.read<CreateAnimationCubit>().changedPage(
                      destination: -size.width,
                      layover: -size.width,
                      result: 0);
                }),
            Center(
                child: Text(
              'Layover Create',
              style: theme.textTheme.bodyText2!.copyWith(fontSize: 40),
            )),
          ],
        ),
      ),
    );
  }
}
