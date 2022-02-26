import 'package:flutter/material.dart';
import 'package:mc_crud_test/core/utils/resources/mainStrings.dart';
import 'package:mc_crud_test/presentation/views/mainScreen/mainScreen.dart';
import 'package:mc_crud_test/presentation/views/unknownRoute/unknownRoute.dart';

class AppRoutes {
  AppRoutes._();

  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainStrings.rootRoute:
        return MaterialPageRoute(builder: (_) => const MainScreen());

      default:
        return MaterialPageRoute(builder: (_) => const UnknownRoute());
    }
  }

  static Route onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => const UnknownRoute());
  }
}
