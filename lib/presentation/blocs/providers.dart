import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mc_crud_test/core/utils/di/injector.dart';
import 'package:mc_crud_test/core/utils/resources/app_themes.dart';
import 'package:mc_crud_test/presentation/blocs/customers/customersBloc.dart';

import 'blocs.dart';

class BlocProviders {
  BlocProviders._();

  static final List<BlocProvider> providers = [
    BlocProvider<LocaleCubit>(create: (_) => LocaleCubit()),
    BlocProvider<ThemeBloc>(
        create: (_) =>
            ThemeBloc(ThemeInitial(MainTheme.appThemeData[AppTheme.light]!))),
    BlocProvider<CustomersBloc>(create: (_) => injector.get<CustomersBloc>()),
  ];
}
