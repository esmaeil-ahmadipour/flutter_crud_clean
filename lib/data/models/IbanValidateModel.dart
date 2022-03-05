import 'package:mc_crud_test/domain/entities/IbanValidate.dart';

class IbanValidateModel extends IbanValidate {

  const IbanValidateModel({
    required bool isValid
  }) :super(
      isValid: isValid);


  factory IbanValidateModel.fromJson(Map<String, dynamic>? map) {
    if (map != null) {
     return  IbanValidateModel(
      isValid:map['valid'] as bool,
    );
    } else {
      throw ArgumentError('Data is null');
    }
  }
}