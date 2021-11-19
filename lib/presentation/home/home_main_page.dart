import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/logger.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/application/travel/research/travel_research_cubit.dart';
import 'package:flutter_goffer/presentation/feed/feed.dart';
import 'package:flutter_goffer/presentation/home/home_banner.dart';
import 'package:flutter_goffer/presentation/travel/travel_start_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeMainPage extends StatelessWidget {
  const HomeMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GOFFER'),
        actions: [
          IconButton(
              onPressed: () {
                context.read<TravelResearchCubit>().getTravelResearch(id: 1);
                logger.e(context.watch<TravelResearchCubit>().state.research);
                // context
                //     .read<TravelCreateBloc>()
                //     .add(const TravelCreateEvent.started());
                // pushNewScreen(context,
                //     screen: const TravelStartScreen(),
                //     pageTransitionAnimation: PageTransitionAnimation.slideUp,
                //     withNavBar: false);
              },
              icon: const Icon(Icons.add_box_rounded,
                  color: Color.fromRGBO(71, 71, 71, 1))),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings_rounded,
                  color: Color.fromRGBO(71, 71, 71, 1))),
        ],
      ),
      body: Column(
        children: const [
          HomeBanner(),
          Feed(),
        ],
      ),
    );
  }
}
