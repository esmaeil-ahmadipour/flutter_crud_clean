import 'package:mc_crud_test/domain/entities/phoneValidate.dart';

class PhoneValidateModel extends PhoneValidate {
  const PhoneValidateModel({
    String? phone,
    bool? valid,
    FormatModel? format,
    CountryModel? country,
    String? location,
    String? type,
    String? carrier,
  }) : super(
            phone: phone,
            valid: valid,
            format: format,
            country: country,
            location: location,
            type: type,
            carrier: carrier);

  factory PhoneValidateModel.fromJson(Map<String, dynamic>? map) {
    if (map != null) {
      print("MODEL:$map");
      return PhoneValidateModel(
        phone: map['phone'] as String,
        valid: map['valid'] as bool,
        location: map['location'] as String,
        type: map['type'] as String,
        carrier: map['carrier'] as String,
        format: FormatModel.fromJson(map['format'] as Map<String, dynamic>),
        country: CountryModel.fromJson(map['country'] as Map<String, dynamic>),
      );
    } else {
      throw ArgumentError('Data is null');
    }
  }
}

class FormatModel extends Format {
  const FormatModel({
    String? international,
    String? local,
}):super(
      international:international,
      local:local,
  );



  factory FormatModel.fromJson(Map<String, dynamic>? map) {
    if (map != null) {
      return FormatModel(
      international: map['international'] as String,
      local: map['local'] as String,
    );
    } else {
      throw ArgumentError('Data is null');
    }
  }
}

class CountryModel extends  Country{

  const CountryModel({
    String? code,
    String? name,
    String? prefix
  }):super(
      code:code,
      name:name,
      prefix:prefix
  );



  factory CountryModel.fromJson(Map<String, dynamic>? map) {
    if (map != null) {
      return  CountryModel(
          code: map['code'] as String,
          name: map['name'] as String,
          prefix: map['prefix'] as String
      );
    } else {
      throw ArgumentError('Data is null');
    }
  }

}
