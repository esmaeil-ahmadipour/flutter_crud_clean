import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mc_crud_test/core/utils/localization/appLocalizations.dart';
import 'package:mc_crud_test/core/utils/resources/app_themes.dart';
import 'package:mc_crud_test/presentation/blocs/locale/locale_cubit.dart';
import 'package:mc_crud_test/presentation/blocs/theme/theme_bloc.dart';
import 'package:mc_crud_test/presentation/views/drawer/widgets/custom_drawer_item.dart';
import 'package:mc_crud_test/presentation/views/drawer/widgets/drawer_title_widget.dart';
import 'package:move_to_background/move_to_background.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.translate('app_title')!,
                  style: Theme.of(context).primaryTextTheme.headline6,
                ),
              ),
            ),
            const DrawerSettingsTitleWidget(),
            BlocBuilder<ThemeBloc, ThemeState>(
              buildWhen: (previousThemeState, currentThemeState) =>
                  previousThemeState != currentThemeState,
              builder: (_, themeState) {
                return DrawerItemWidget(
                    iconData: Theme.of(context).brightness.index == 0
                        ? Icons.wb_sunny
                        : Icons.nightlight_outlined,
                    itemText: AppLocalizations.of(context)!
                        .translate('change_theme')!,
                    onTap: () {
                      BlocProvider.of<ThemeBloc>(context).add(ThemeChanged(
                          theme: Theme.of(context).brightness.index == 0
                              ? AppTheme.values[0]
                              : AppTheme.values[1]));
                    });
              },
            ),
            BlocBuilder<LocaleCubit, LocaleState>(
              buildWhen: (previousLocalState, currentLocalState) =>
                  previousLocalState != currentLocalState,
              builder: (_, localeState) {
                return DrawerItemWidget(
                    iconData: AppLocalizations.of(context)!.isEnLocale == false
                        ? Icons.format_align_right_outlined
                        : Icons.format_align_left_outlined,
                    itemText: AppLocalizations.of(context)!
                        .translate('change_language')!,
                    onTap: () {
                      if (AppLocalizations.of(context)!.isEnLocale == false) {
                        BlocProvider.of<LocaleCubit>(context).toEnglish();
                      } else {
                        BlocProvider.of<LocaleCubit>(context).toFarsi();
                      }
                    });
              },
            ),
            DrawerItemWidget(
                iconData: Icons.exit_to_app,
                itemText:
                    AppLocalizations.of(context)!.translate('exit_from_app')!,
                onTap: () {
                  if (Platform.isAndroid) {
                    MoveToBackground.moveTaskToBack();
                  } else if (Platform.isIOS) {
                    exit(0);
                  }
                })
          ],
        ),
      ),
    );
  }
}
