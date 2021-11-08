import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create/animation/create_animation_cubit.dart';
import 'package:flutter_goffer/presentation/create/widget/create_body_widget.dart';
import 'package:flutter_goffer/presentation/create/widget/create_submitted_btn.dart';

class ResultCreateBody extends StatelessWidget {
  const ResultCreateBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateBodyWidget(
      isShowBackBtn: true,
      onTap: () => context.read<CreateAnimationCubit>().changedPage(
          destination: -size.width, layover: 0, result: size.width),
      widget: SafeArea(
        child: Stack(
          children: [
            createSubmittedBtn(title: '경유지 만들러 가기', onTap: () {}),
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
