import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/find_location/find_location_cubit.dart';

class AddressListView extends StatelessWidget {
  const AddressListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FindLocationCubit, FindLocationState>(
      builder: (context, state) {
        if (state.location.isEmpty) {
          return Container();
        }
        return Expanded(
            child: ListView(
          shrinkWrap: true,
          children: [
            ...state.location.map((data) => InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 18, right: 18),
                    child: Container(
                      width: size.width * 0.9,
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: const Color.fromRGBO(195, 195, 195, 1))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              data.place_name,
                              style: theme.textTheme.bodyText2!
                                  .copyWith(fontSize: 14, color: appColor),
                            ),
                            Expanded(
                              child: Text(
                                data.road_address_name!.isEmpty
                                    ? data.address_name
                                    : data.road_address_name!,
                                style: theme.textTheme.bodyText2!.copyWith(
                                    fontSize: 12,
                                    color:
                                        const Color.fromRGBO(135, 135, 135, 1)),
                              ),
                            ),
                            DefaultTextStyle(
                              style: theme.textTheme.bodyText2!.copyWith(
                                color: const Color.fromRGBO(155, 155, 155, 1),
                                fontSize: 9,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(data.phone),
                                  Text(data.place_url),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ));
      },
    );
  }
}
