import 'package:flutter_goffer/_constant/flavor/enviroment.dart';
import 'package:flutter_goffer/_constant/flavor/main_common.dart';

Future<void> main() async {
  await mainCommon(Enviroment.qa);
}
