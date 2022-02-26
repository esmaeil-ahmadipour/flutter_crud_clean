import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mc_crud_test/core/utils/resources/app_themes.dart';

import 'blocs.dart';

class BlocProviders {
  static final List<BlocProvider> providers = [
    BlocProvider<LocaleCubit>(create: (_) => LocaleCubit()),
    BlocProvider<ThemeBloc>(
        create: (_) =>
            ThemeBloc(ThemeInitial(MainTheme.appThemeData[AppTheme.light]!))),
  ];
}
