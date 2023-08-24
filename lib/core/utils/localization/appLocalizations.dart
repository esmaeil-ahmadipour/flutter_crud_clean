import 'dart:convert' show json;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mc_crud_test/core/utils/resources/mainStrings.dart';

import 'appLocalizationsDelegate.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();

  Map<String, String>? _localizedStrings;

  Future<void> load() async {
    _localizedStrings = locale.languageCode=="en"?MainStrings.en:MainStrings.fa.map<String, String>((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  String? translate(String key) => _localizedStrings![key];

  bool get isEnLocale => locale.languageCode == 'en';
}
