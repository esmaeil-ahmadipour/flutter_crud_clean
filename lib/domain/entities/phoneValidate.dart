import 'package:equatable/equatable.dart';

class PhoneValidate extends Equatable {
  final String? phone;
  final bool? valid;
  final Format? format;
  final Country? country;
  final String? location;
  final String? type;
  final String? carrier;

  const PhoneValidate(
      {this.phone,
      this.valid,
      this.format,
      this.country,
      this.location,
      this.type,
      this.carrier});

  @override
  List<Object?> get props {
    return [phone, valid, format, country, location, type, carrier];
  }
  @override
  bool get stringify =>true;

}

class Format extends Equatable {
  final String? international;
  final String? local;

  const Format({this.international, this.local});

  @override
  List<Object?> get props {
    return [international, local];
  }

  @override
  bool get stringify =>true;
}

class Country extends Equatable {
  final String? code;
  final String? name;
  final String? prefix;

  const Country({this.code, this.name, this.prefix});

  @override
  List<Object?> get props {
    return [code, name, prefix];
  }
  @override
  bool get stringify =>true;

}
