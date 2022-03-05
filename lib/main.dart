import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mc_crud_test/app.dart';
import 'package:mc_crud_test/core/utils/di/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());

}
