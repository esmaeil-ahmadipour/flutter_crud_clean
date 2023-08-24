class CountryInfo {
  late String countryName;
  late String codeLetter;
  late String countryCode;

  CountryInfo(
      {required this.countryName,
      required this.codeLetter,
      required this.countryCode});

  CountryInfo.fromJson(Map<String, dynamic> json) {
    countryName = json['country_name'];
    codeLetter = json['code_letter'];
    countryCode = json['country_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['country_name'] = countryName;
    data['code_letter'] = codeLetter;
    data['country_code'] = countryCode;
    return data;
  }
}