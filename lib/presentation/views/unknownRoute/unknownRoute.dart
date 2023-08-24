import 'package:flutter/material.dart';
import 'package:mc_crud_test/core/utils/localization/appLocalizations.dart';

class UnknownRoute extends StatelessWidget {
  const UnknownRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text(AppLocalizations.of(context)!.translate('unknown_route')!),
      ),
    );
  }
}
