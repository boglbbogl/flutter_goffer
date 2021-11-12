import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/_flavor/config_reader.dart';
import 'package:flutter_goffer/injection.dart';
import 'package:flutter_goffer/presentation/_main/goffer_app.dart';
import 'package:injectable/injectable.dart';
import 'package:kakao_flutter_sdk/auth.dart';
import 'package:provider/provider.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();
  configureInjection(Environment.prod);
  KakaoContext.clientId = '8d35f11b129ef0dc5afcfc8df106f4cb';
  Provider.debugCheckInvalidValueType = null;
  runApp(const GofferApp());
}
