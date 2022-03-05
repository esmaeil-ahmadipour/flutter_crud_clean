import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mc_crud_test/core/utils/di/injector.dart';
import 'package:mc_crud_test/core/utils/localization/appLocalizations.dart';
import 'package:mc_crud_test/presentation/blocs/customers/customersBloc.dart';
import 'package:mc_crud_test/presentation/views/drawer/custom_drawer.dart';

import '../../../core/utils/resources/mainStrings.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CustomersBloc>(context).add(const GetAllCustomers());

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, MainStrings.addNewCustomerRoute);
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.translate('app_title')!),
      ),
      body: BlocBuilder<CustomersBloc, CustomersState>(builder: (_, state) {
        if (state is CustomersLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return state.customers!.isNotEmpty
              ? ListView.builder(
                  itemCount:
                      injector.get<CustomersBloc>().state.customers!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        tileColor: Theme.of(context).cardColor,
                        title: Text(state.customers![index].firstName),
                        subtitle: Text(state.customers![index].lastName),
                        leading: CircleAvatar(
                          child: Text(
                              "${state.customers![index].firstName[0]}${state.customers![index].lastName[0]}"),
                        ),
                      ),
                    );
                  },
                )
              : Center(
                  child: Text(
                    AppLocalizations.of(context)!.translate("welcome")!,
                    textAlign: TextAlign.center,
                  ),
                );
        }
      }),
    );
  }
}
