import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';

class TravelMainLocationToggleBody extends StatelessWidget {
  const TravelMainLocationToggleBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.05,
      decoration: BoxDecoration(
          border: Border.all(width: 4),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buttonItem(
            context: context,
            index: 0,
            title: '출발지',
            radius: const BorderRadius.only(
                topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
          ),
          _buttonItem(
            context: context,
            width: size.width * 0.2931,
            title: '도착지',
            index: 1,
            radius: BorderRadius.zero,
          ),
          _buttonItem(
            context: context,
            index: 2,
            title: '경유지',
            radius: const BorderRadius.only(
                topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
          ),
        ],
      ),
    );
  }

  InkWell _buttonItem({
    required BuildContext context,
    required int index,
    required BorderRadiusGeometry radius,
    required String title,
    double? width,
  }) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();
        context
            .read<TravelCreateBloc>()
            .add(TravelCreateEvent.locationToggleButton(index: index));
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: width ?? size.width * 0.292,
        height: size.height * 0.5,
        decoration: BoxDecoration(
          borderRadius: radius,
          color: context
                      .watch<TravelCreateBloc>()
                      .state
                      .selectedTogglButtonIndex ==
                  index
              ? Colors.black
              : Colors.white38,
        ),
        child: Center(
          child: Text(
            title,
            style: theme.textTheme.bodyText2!.copyWith(
                color: context
                            .watch<TravelCreateBloc>()
                            .state
                            .selectedTogglButtonIndex ==
                        index
                    ? Colors.white
                    : const Color.fromRGBO(155, 155, 155, 1),
                fontSize: 12),
          ),
        ),
      ),
    );
  }
}
