import 'package:flutter/material.dart';
import 'package:mc_crud_test/core/utils/localization/appLocalizations.dart';
import 'package:mc_crud_test/data/models/countryInfo.dart';

class CountryInfoDropDownWidget extends StatefulWidget {
  const CountryInfoDropDownWidget(
      {Key? key,
      required this.listCountry,
      required this.selectedCountryCallback})
      : super(key: key);
  final List<CountryInfo> listCountry;
  final ValueChanged<String> selectedCountryCallback;

  @override
  State<CountryInfoDropDownWidget> createState() =>
      _CountryInfoDropDownWidgetState();
}

class _CountryInfoDropDownWidgetState extends State<CountryInfoDropDownWidget> {
  CountryInfo? _dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: DropdownButton<CountryInfo>(
        underline: const SizedBox(),
        style: TextStyle(fontSize: 16.0, color: Theme.of(context).primaryTextTheme.bodyMedium!.color),
        elevation: 16,
        isExpanded: true,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        value: _dropdownValue ?? widget.listCountry[0],
        items: widget.listCountry.map((CountryInfo value) {
          return DropdownMenuItem<CountryInfo>(
            value: value,
            child: Text(
                value.countryCode == ""
                    ? "  ${AppLocalizations.of(context)!.translate("select_country_code")}"
                    : "  +${value.countryCode}   ${value.countryName}",
                overflow: TextOverflow.ellipsis),
          );
        }).toList(),
        onChanged: (value) {
          if (value!.countryCode != "") {
            setState(() {
              _dropdownValue = value;
              widget.selectedCountryCallback("${value.countryCode}");
            });
          }
        },
      ),
    );
  }
}
