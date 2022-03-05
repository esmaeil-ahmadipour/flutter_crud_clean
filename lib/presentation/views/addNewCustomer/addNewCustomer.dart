import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mc_crud_test/core/utils/localization/appLocalizations.dart';
import 'package:mc_crud_test/core/utils/resources/countriesInfo.dart';
import 'package:mc_crud_test/presentation/blocs/validations/validationBloc.dart';
import 'package:mc_crud_test/presentation/views/addNewCustomer/widgets/customDropDownWidget.dart';
import 'package:mc_crud_test/presentation/views/addNewCustomer/widgets/onlineMobileValidationWidget.dart';
import 'package:mc_crud_test/presentation/views/addNewCustomer/widgets/selectDoBWidget.dart';
import 'package:mc_crud_test/presentation/views/addNewCustomer/widgets/textFormFieldWidget.dart';

import 'widgets/onlineIbanValidationWidget.dart';

class AddNewCustomerScreen extends HookWidget {
  const AddNewCustomerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              "${AppLocalizations.of(context)!.translate("add_new_customer_title")}")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StreamBuilder<String>(
                stream: BlocProvider.of<ValidationBloc>(context).firstName,
                builder: (context, snapshotFirstName) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormFieldWidget(
                          hintText: AppLocalizations.of(context)!
                              .translate("first_name"),
                          labelText: AppLocalizations.of(context)!
                              .translate("first_name"),
                          snapshot: snapshotFirstName,
                          onChanged: BlocProvider.of<ValidationBloc>(context)
                              .changeFirstName));
                }),
            StreamBuilder<String>(
                stream: BlocProvider.of<ValidationBloc>(context).lastName,
                builder: (context, snapshotLastName) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormFieldWidget(
                          hintText: AppLocalizations.of(context)!
                              .translate("last_name"),
                          labelText: AppLocalizations.of(context)!
                              .translate("last_name"),
                          snapshot: snapshotLastName,
                          onChanged: BlocProvider.of<ValidationBloc>(context)
                              .changeLastName));
                }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CountryInfoDropDownWidget(
                  listCountry: CountriesInfo.countriesInfo,
                  selectedCountryCallback:
                      BlocProvider.of<ValidationBloc>(context)
                          .changeCountryCode),
            ),
            StreamBuilder<String>(
                stream: BlocProvider.of<ValidationBloc>(context).countryCode,
                builder: (context, snapshotCountryCode) {
                  return StreamBuilder<String>(
                      stream:
                          BlocProvider.of<ValidationBloc>(context).phoneNumber,
                      builder: (context, snapshotPhoneNumber) {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormFieldWidget(
                                enabled: snapshotCountryCode.data != null
                                    ? true
                                    : false,
                                prefixText:
                                    "  +${snapshotCountryCode.data ?? ''}  ",
                                hintText: AppLocalizations.of(context)!
                                    .translate("mobile_number"),
                                labelText: AppLocalizations.of(context)!
                                    .translate("mobile_number"),
                                snapshot: snapshotPhoneNumber,
                                suffixIcon: OnlineMobileValidationWidget(
                                  onChanged:
                                      BlocProvider.of<ValidationBloc>(context)
                                          .changePhoneNumberOnline,
                                  extraInfo:
                                      "+${snapshotCountryCode.data ?? ''}",
                                  snapshot: snapshotPhoneNumber,
                                ),
                                onChanged:
                                    BlocProvider.of<ValidationBloc>(context)
                                        .changePhoneNumber));
                      });
                }),
            StreamBuilder<String>(
                stream:
                    BlocProvider.of<ValidationBloc>(context).bankAccountNumber,
                builder: (context, snapshotBankAccountNumber) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormFieldWidget(
                          hintText: AppLocalizations.of(context)!
                              .translate("bank_account_number"),
                          labelText: AppLocalizations.of(context)!
                              .translate("bank_account_number"),
                          snapshot: snapshotBankAccountNumber,
                          suffixIcon: OnlineIbanValidationWidget(
                              onChanged:
                                  BlocProvider.of<ValidationBloc>(context)
                                      .changeBankAccountNumberOnline,
                              snapshot: snapshotBankAccountNumber),
                          onChanged: BlocProvider.of<ValidationBloc>(context)
                              .changeBankAccountNumber));
                }),
            StreamBuilder<String>(
                stream: BlocProvider.of<ValidationBloc>(context).email,
                builder: (context, snapshotEmail) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormFieldWidget(
                          hintText: AppLocalizations.of(context)!
                              .translate("email_address"),
                          labelText: AppLocalizations.of(context)!
                              .translate("email_address"),
                          snapshot: snapshotEmail,
                          onChanged: BlocProvider.of<ValidationBloc>(context)
                              .changeEmail));
                }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectDoBWidget(
                  title: AppLocalizations.of(context)!
                      .translate("select_date_of_birth"),
                  selectedDoBCallback: BlocProvider.of<ValidationBloc>(context)
                      .changeDateOfBirth),
            ),
            StreamBuilder<bool>(
                stream: BlocProvider.of<ValidationBloc>(context)
                    .isCustomerInfoValid,
                builder: (context, snapshotCustomerInfoValid) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        disabledColor: Theme.of(context).disabledColor,
                        padding: const EdgeInsets.all(16.0),
                        color: Theme.of(context).primaryColor,
                        onPressed: snapshotCustomerInfoValid.hasError ||
                                snapshotCustomerInfoValid.data == false
                            ? null
                            : () async {},
                        shape: const StadiumBorder(),
                        child: Text(AppLocalizations.of(context)!
                            .translate("submit_button")!),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
