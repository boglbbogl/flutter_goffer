import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/animation/travel_animation_cubit.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/injection.dart';
import 'package:flutter_goffer/presentation/travel/travel_main_page.dart';
import 'package:flutter_goffer/presentation/travel/widgets/travel_start_animation_widget.dart';

class TravelStartScreen extends StatelessWidget {
  const TravelStartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TravelAnimationCubit>(
      create: (context) => getIt<TravelAnimationCubit>(),
      child: BlocBuilder<TravelAnimationCubit, TravelAnimationState>(
          builder: (context, state) {
        return AnimatedSwitcher(
            duration: const Duration(milliseconds: 1500),
            child: state.switcherIndex == 0
                ? switcherPage(
                    isButton: context
                        .watch<TravelCreateBloc>()
                        .state
                        .preResearch
                        .asMap()
                        .values
                        .map((e) => e.id)
                        .contains("3"),
                    key: 'start',
                    context: context,
                    backgroundColor: Colors.black,
                    btnTitle: '시작하기',
                    onTap: () {
                      context
                          .read<TravelAnimationCubit>()
                          .startAnimation(index: 1);
                    },
                    widget: const TravelStartAnimationWidget())
                : switcherPage(
                    isButton: false,
                    titleColor: !state.isExpandable ? appColor : appSubColor,
                    btnColor: Colors.white70,
                    key: 'date',
                    context: context,
                    backgroundColor: Colors.white,
                    btnTitle: '목적지 만들러 가기',
                    onTap: () {
                      context
                          .read<TravelAnimationCubit>()
                          .startAnimation(index: 2);
                    },
                    widget: TravelMainPage(
                      dateAndTimeExpandable: state.isExpandable,
                    )));
      }),
    );
  }

  Scaffold switcherPage({
    required bool isButton,
    required BuildContext context,
    required String key,
    required Color backgroundColor,
    Color? btnColor,
    Color? titleColor,
    required Widget widget,
    required Function() onTap,
    required String btnTitle,
  }) {
    return Scaffold(
      key: Key(key),
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.3,
            child: SizedBox(
              width: size.width,
              height: size.height,
              child: ExtendedImage.asset(
                'assets/images/main/create_main.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          widget,
          if (isButton)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: InkWell(
                  onTap: onTap,
                  child: Container(
                    width: size.width * 0.85,
                    height: size.height * 0.07,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: btnColor ?? appColor),
                    child: Center(
                        child: Text(
                      btnTitle,
                      style: theme.textTheme.bodyText2!.copyWith(
                          color: titleColor ?? Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
            )
          else
            Container()
        ],
      ),
    );
  }
}
