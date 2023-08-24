import 'package:flutter/material.dart';
import 'package:mc_crud_test/core/utils/localization/appLocalizations.dart';

class DrawerSettingsTitleWidget extends StatelessWidget {
  const DrawerSettingsTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Container(
        padding: const EdgeInsetsDirectional.only(start: 16),
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          AppLocalizations.of(context)!.translate('settings')!,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
