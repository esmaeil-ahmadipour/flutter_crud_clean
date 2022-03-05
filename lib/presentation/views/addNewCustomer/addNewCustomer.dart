import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mc_crud_test/core/utils/localization/appLocalizations.dart';

class AddNewCustomerScreen extends HookWidget {
  const AddNewCustomerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("${AppLocalizations.of(context)!.translate("add_new_customer_title")}")),
        body: const Center());
  }
}
