part of 'phoneValidateBloc.dart';

abstract class PhoneValidateEvent extends Equatable {
  final String? phoneNumber;
  final String? countryCode;
  const PhoneValidateEvent({this.countryCode, this.phoneNumber  });

  @override
  List<Object?> get props => [phoneNumber!,countryCode!];
}

class GetPhoneNumber extends PhoneValidateEvent {
  const GetPhoneNumber(String phoneNumber)
      : super(phoneNumber: phoneNumber);

}

class GetCountryCode extends PhoneValidateEvent {
  const GetCountryCode(String countryCode)
      : super(countryCode: countryCode);

}

class GetPhoneValidateData extends PhoneValidateEvent {
  const GetPhoneValidateData(String phoneNumber , String countryCode) : super(phoneNumber: phoneNumber , countryCode: countryCode);

}


