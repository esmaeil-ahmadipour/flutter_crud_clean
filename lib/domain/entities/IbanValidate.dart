import 'package:equatable/equatable.dart';

class IbanValidate extends Equatable {
  final String? iban;
  final bool? isValid;

  const IbanValidate({ this.iban, this.isValid});

  @override
  List<Object?> get props {
    return[
      iban,
      isValid
    ];
  }
  @override
  bool get stringify =>true;

}