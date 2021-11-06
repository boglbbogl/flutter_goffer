import 'package:flutter/material.dart';
import 'package:flutter_goffer/injection.dart';
import 'package:flutter_goffer/presentation/_main/app_widget.dart';
import 'package:injectable/injectable.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(const MyApp());
}
