import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mc_crud_test/core/utils/app_routes.dart';
import 'package:mc_crud_test/core/utils/localization/appLocalizationsSetup.dart';
import 'package:mc_crud_test/core/utils/resources/mainStrings.dart';
import 'package:mc_crud_test/presentation/blocs/providers.dart';

import 'presentation/blocs/locale/locale_cubit.dart';
import 'presentation/blocs/theme/theme_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocProviders.providers,
      child: BlocBuilder<LocaleCubit, LocaleState>(
        buildWhen: (previousLocalState, currentLocalState) =>
            previousLocalState != currentLocalState,
        builder: (_, localeState) {
          return BlocBuilder<ThemeBloc, ThemeState>(
            buildWhen: (previousThemeState, currentThemeState) =>
                previousThemeState != currentThemeState,
            builder: (_, themeState) {
              return MaterialApp(
                title: MainStrings.appTitleName,
                onGenerateRoute: AppRoutes.onGenerateRoute,
                onUnknownRoute: AppRoutes.onUnknownRoute,
                theme: themeState.themeData,
                supportedLocales: AppLocalizationsSetup.supportedLocales,
                localizationsDelegates:
                    AppLocalizationsSetup.localizationsDelegates,
                localeResolutionCallback:
                    AppLocalizationsSetup.localeResolutionCallback,
                // Each time a new state emitted, the app will be rebuilt with the new
                // locale.
                locale: localeState.locale,
              );
            },
          );
        },
      ),
    );
  }
}
