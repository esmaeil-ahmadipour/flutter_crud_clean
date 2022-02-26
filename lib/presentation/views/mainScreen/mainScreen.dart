import 'package:flutter/material.dart';
import 'package:mc_crud_test/core/utils/localization/appLocalizations.dart';
import 'package:mc_crud_test/presentation/views/drawer/custom_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.translate('app_title')!),
        // leading: IconButton(
        //   icon: const Icon(Icons.translate),
        //   onPressed: () {
        //     Navigator.of(context).pushNamed("/theme");
        //     // if (AppLocalizations.of(context)!.isEnLocale) {
        //     //   BlocProvider.of<LocaleCubit>(context).toArabic();
        //     // } else {
        //     //   BlocProvider.of<LocaleCubit>(context).toEnglish();
        //     // }
        //   },
        // ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: <Widget>[
                Text(
                  AppLocalizations.of(context)!.translate('head_title')!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
