import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/animation/travel_animation_cubit.dart';
import 'package:flutter_goffer/injection.dart';
import 'package:flutter_goffer/presentation/travel/travel_main_page.dart';

class TravelStartScreen extends StatelessWidget {
  const TravelStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => getIt<TravelAnimationCubit>()..started()),
      ],
      child: BlocBuilder<TravelAnimationCubit, TravelAnimationState>(
          builder: (context, state) {
        return AnimatedSwitcher(
            duration: const Duration(milliseconds: 1500),
            child: state.switcherIndex == 0
                ? switcherPage(
                    isButton: true,
                    key: 'start',
                    context: context,
                    backgroundColor: Colors.black,
                    btnTitle: '시작하기',
                    onTap: () {
                      context
                          .read<TravelAnimationCubit>()
                          .startAnimation(index: 1);
                    },
                    widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: size.height * 0.20),
                        titleForm(
                            title: '나만의 일정을', leftPadding: 30, topPadding: 0),
                        titleForm(
                            title: '만드시겠습니까 ?',
                            leftPadding: 70,
                            topPadding: 20),
                      ],
                    ),
                  )
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

  Padding titleForm({
    required String title,
    required double leftPadding,
    required double topPadding,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding, top: topPadding),
      child: Text(
        title,
        style: theme.textTheme.bodyText2!.copyWith(
            color: appColor, fontWeight: FontWeight.bold, fontSize: 30),
      ),
    );
  }
}
