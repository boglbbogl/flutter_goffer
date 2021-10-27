import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create_animation_cubit.dart';
import 'package:flutter_goffer/presentation/create/screen/create_matrix_slider_page.dart';

class CreateMainPage extends StatelessWidget {
  const CreateMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateAnimationCubit>(
      create: (context) => CreateAnimationCubit()..started(),
      child: BlocBuilder<CreateAnimationCubit, CreateAnimationState>(
        builder: (context, state) {
          return AnimatedSwitcher(
              duration: const Duration(milliseconds: 1500),
              child: !state.startAnimation
                  ? Scaffold(
                      backgroundColor: Colors.black,
                      body: Stack(
                        children: [
                          Opacity(
                            opacity: 0.3,
                            child: SizedBox(
                              width: size.width,
                              height: size.height,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images/create_main.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: size.height * 0.20),
                              titleForm(
                                  title: '나만의 일정을',
                                  leftPadding: 30,
                                  topPadding: 0),
                              titleForm(
                                  title: '만드시겠습니까 ?',
                                  leftPadding: 70,
                                  topPadding: 20),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: InkWell(
                                onTap: () => context
                                    .read<CreateAnimationCubit>()
                                    .startAnimation(),
                                child: Container(
                                  width: size.width * 0.85,
                                  height: size.height * 0.07,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: appColor),
                                  child: Center(
                                      child: Text(
                                    '시작하기',
                                    style: theme.textTheme.bodyText2!.copyWith(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : CreateMatrixSliderPage(
                      datePosition: state.date,
                      destinationPosition: state.destination,
                      layoverPosition: state.layover,
                      resultPosition: state.result,
                    ));
        },
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
            color: appColor, fontWeight: FontWeight.bold, fontSize: 50),
      ),
    );
  }
}
