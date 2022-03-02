import 'package:mc_crud_test/domain/entities/IbanValidate.dart';

class IbanValidateModel extends IbanValidate {

  const IbanValidateModel({
    String? iban,
    bool? isValid,
  }) :super(
      iban: iban,
      isValid: isValid,);


  factory IbanValidateModel.fromJson(Map<String, dynamic>? map) {
    if (map != null) {
     return  IbanValidateModel(
      iban: map['iban'] as String,
      isValid: map['is_valid'] as bool,
    );
    } else {
      throw ArgumentError('Data is null');
    }
  }
}