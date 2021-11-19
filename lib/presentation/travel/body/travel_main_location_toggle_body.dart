import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';

class TravelMainLocationToggleBody extends StatelessWidget {
  final int selectedIndex;
  const TravelMainLocationToggleBody({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.05,
      decoration: BoxDecoration(
          border: Border.all(width: 3),
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
            border: Border.all(width: 2),
          ),
          _buttonItem(
            context: context,
            title: '도착지',
            index: 1,
            radius: BorderRadius.circular(0),
            border: Border.all(width: 2),
          ),
          _buttonItem(
            context: context,
            index: 2,
            title: '경유지',
            radius: const BorderRadius.only(
                topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
            border: Border.all(width: 2),
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
    required BoxBorder border,
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
        width: size.width * 0.29513,
        height: size.height * 0.5,
        decoration: BoxDecoration(
          border: border,
          borderRadius: radius,
          color: selectedIndex == index ? Colors.black : Colors.white38,
        ),
        child: Center(
          child: Text(
            title,
            style: theme.textTheme.bodyText2!.copyWith(
                color: selectedIndex == index
                    ? Colors.white
                    : const Color.fromRGBO(155, 155, 155, 1),
                fontSize: 12),
          ),
        ),
      ),
    );
  }
}
