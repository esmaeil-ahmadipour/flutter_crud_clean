import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mc_crud_test/core/utils/resources/mainStrings.dart';
import 'package:mc_crud_test/presentation/blocs/providers.dart';
import 'package:mc_crud_test/presentation/views/addNewCustomer/addNewCustomer.dart';
import 'package:mc_crud_test/presentation/views/mainScreen/mainScreen.dart';
import 'package:mc_crud_test/presentation/views/unknownRoute/unknownRoute.dart';

class AppRoutes {
  AppRoutes._();

  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainStrings.rootRoute:
        return MaterialPageRoute(builder: (_) => const MainScreen());

      case MainStrings.addNewCustomerRoute:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
              providers: BlocProviders.addNewCustomerProviders,
                  child: const AddNewCustomerScreen(),
                ));


      default:
        return MaterialPageRoute(builder: (_) => const UnknownRoute());
    }
  }

  static Route onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => const UnknownRoute());
  }
}
