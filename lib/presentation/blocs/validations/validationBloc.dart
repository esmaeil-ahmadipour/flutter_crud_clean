import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:mc_crud_test/core/utils/methods.dart';
import 'package:mc_crud_test/domain/entities/IbanValidate.dart';
import 'package:mc_crud_test/domain/entities/phoneValidate.dart';
import 'package:rxdart/rxdart.dart';

part 'validationState.dart';

class ValidationBloc extends Cubit<ValidationState> {
  ValidationBloc() : super(const Initial());

  final _email = BehaviorSubject<String>();
  final _bankAccountNumber = BehaviorSubject<String>();
  final _bankAccountNumberOnline = BehaviorSubject<IbanValidate>();
  final _phoneNumber = BehaviorSubject<String>();
  final _phoneNumberOnline = BehaviorSubject<PhoneValidate>();
  final _countryCode = BehaviorSubject<String>.seeded("");
  final _firstName = BehaviorSubject<String>();
  final _lastName = BehaviorSubject<String>();
  final _dateOfBirth = BehaviorSubject<int?>();

  Stream<PhoneValidate> get phoneNumberOnline =>
      _phoneNumberOnline.stream.transform(validationPhoneNumberOnline);

  Stream<IbanValidate> get bankAccountNumberOnline =>
      _bankAccountNumberOnline.stream
          .transform(validationNewBankAccountNumberOnline);

  Stream<String> get firstName =>
      _firstName.stream.transform(validationFirstName);

  Stream<int?> get dateOfBirth =>
      _dateOfBirth.stream.transform(validationDateOfBirth);

  Stream<String> get lastName => _lastName.stream.transform(validationLastName);

  Stream<String> get email => _email.stream.transform(validationEmail);

  Stream<String> get countryCode =>
      _countryCode.stream.transform(validationCountryCode);

  Stream<String> get phoneNumber =>
      _phoneNumber.stream.transform(validationPhoneNumber);

  Stream<String> get bankAccountNumber =>
      _bankAccountNumber.stream.transform(validationNewBankAccountNumber);

  Stream<bool> get isCustomerInfoValid => Rx.combineLatest9(
      firstName,
      lastName,
      email,
      dateOfBirth,
      bankAccountNumber,
      bankAccountNumberOnline,
      phoneNumber,
      phoneNumberOnline,
      countryCode,
      (firstName,
              lastName,
              email,
              dateOfBirth,
              bankAccountNumber,
              bankAccountNumberOnline,
              phoneNumber,
              phoneNumberOnline,
              countryCode) =>
          true);

  Function(String) get changeFirstName => _firstName.sink.add;

  Function(int?) get changeDateOfBirth => _dateOfBirth.sink.add;

  Function(String) get changeLastName => _lastName.sink.add;

  Function(String) get changeEmail => _email.sink.add;

  Function(String) get changeBankAccountNumber => _bankAccountNumber.sink.add;

  Function(String) get changePhoneNumber => _phoneNumber.sink.add;

  Function(String) get changeCountryCode => _countryCode.sink.add;

  Function(IbanValidate) get changeBankAccountNumberOnline =>
      _bankAccountNumberOnline.sink.add;

  Function(PhoneValidate) get changePhoneNumberOnline =>
      _phoneNumberOnline.sink.add;

  dispose() {
    _firstName.close();
    _lastName.close();
    _email.close();
    _dateOfBirth.close();
    _bankAccountNumber.close();
    _bankAccountNumberOnline.close();
    _phoneNumber.close();
    _phoneNumberOnline.close();
    _countryCode.close();
  }

  //Validation DateOfBirth
  final validationDateOfBirth = StreamTransformer<int?, int?>.fromHandlers(
      handleData: (dateOfBirth, sink) {
    if (dateOfBirth == null) {
      sink.addError('empty_validation');
    } else {
      sink.add(dateOfBirth);
    }
  });

  //Validation FirstName
  final validationFirstName = StreamTransformer<String, String>.fromHandlers(
      handleData: (firstName, sink) {
    if (firstName == "") {
      sink.addError('empty_validation');
    } else if (firstName.length < 2 || firstName.length > 255) {
      sink.addError('empty_validation');
    } else if (!RegExp(r'^[a-zA-Z_ ]+$').hasMatch(firstName)) {
      sink.addError('incorrect_validation');
    } else {
      sink.add(firstName);
    }
  });

  //Validation LastName
  final validationLastName = StreamTransformer<String, String>.fromHandlers(
      handleData: (lastName, sink) {
    if (lastName == "") {
      sink.addError('empty_validation');
    } else if (lastName.length < 2 || lastName.length > 255) {
      sink.addError('empty_validation');
    } else if (!RegExp(r'^[a-zA-Z_ ]+$').hasMatch(lastName)) {
      sink.addError('incorrect_validation');
    } else {
      sink.add(lastName);
    }
  });

  //Validation phoneNumber
  final validationPhoneNumber = StreamTransformer<String, String>.fromHandlers(
      handleData: (phoneNumber, sink) {
    if (phoneNumber == "null" || phoneNumber.trim() == "") {
      // when : text entry is empty
      sink.addError('empty_validation');
    } else if (phoneNumber.startsWith("0")) {
      // when : text entry start with zero-number
      sink.addError('incorrect_validation');
    } else if (phoneNumber.length > 15 || phoneNumber.length < 6) {
      // when : text entry length not in range
      sink.addError('incorrect_validation');
    } else if (int.tryParse(phoneNumber) == null ||
        (phoneNumber.contains("+") ||
            phoneNumber.contains("-") ||
            phoneNumber.contains("."))) {
      // when : text entry contains '+' or '-' or '.'
      sink.addError('incorrect_validation');
    } else {
      sink.add(phoneNumber);
    }
  });

  //Validation phoneNumber Online
  final validationPhoneNumberOnline =
      StreamTransformer<PhoneValidate, PhoneValidate>.fromHandlers(
          handleData: (phoneNumberOnline, sink) {
    if (phoneNumberOnline.type != "mobile") {
      // when : phone number type isn't mobile-type .
      sink.addError('empty_validation');
    } else if ("${phoneNumberOnline.valid}" != "true" && "${phoneNumberOnline.valid}" !="") {
      // when : phone number isn't valid .
      sink.addError('incorrect_validation');
    } else {
      print("aaaa>${phoneNumberOnline}");
      sink.add(phoneNumberOnline);
    }
  });

  //Validation countryCode
  final validationCountryCode = StreamTransformer<String, String>.fromHandlers(
      handleData: (countryCode, sink) {
    if (countryCode == "") {
      sink.addError('empty_validation');
    } else {
      sink.add(countryCode);
    }
  });

//Validation email
  final validationEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.isEmpty) {
      sink.addError('empty_validation');
    } else if (isNonLatinEmailAddress(email)) {
      sink.addError('incorrect_validation');
    } else if (!RegExp(// using basic regex helper.
        r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(email)) {
      sink.addError('incorrect_validation');
    } else if (email.split("@")[0].endsWith(".") ||
        email.split("@")[0].startsWith(".")) {
      //when: for username , at start and end just using asci 0-9 a-z is valid.
      sink.addError('incorrect_validation');
    } else if (email.split("@").length > 2) {
      //when: using double '@' is invalid.
      sink.addError('incorrect_validation');
    } else if (email.length > 255) {
      // max varchar type limit is 255.
      sink.addError('incorrect_validation');
    } else {
      sink.add(email);
    }
  });

  //Validation bankAccountNumber
  final validationNewBankAccountNumber =
      StreamTransformer<String, String>.fromHandlers(
          handleData: (bankAccountNumber, sink) {
    if (bankAccountNumber.isEmpty) {
      //valid: until has data
      sink.addError('empty_validation');
    } else if (!(bankAccountNumber.length > 10 &&
        bankAccountNumber.length < 40)) {
      //when: valid range is  10~40 digits
      sink.addError('account_number_limit');
    } else if (!RegExp(r'^[a-zA-Z][a-zA-Z0-9]+$')
        .hasMatch(bankAccountNumber.substring(1))) {
      // when : first and second characters is alphabet and after alphanumeric
      sink.addError('incorrect_validation');
    } else {
      sink.add(bankAccountNumber);
    }
  });

  //Validation bankAccountNumber Online
  final validationNewBankAccountNumberOnline =
      StreamTransformer<IbanValidate, IbanValidate>.fromHandlers(
          handleData: (bankAccountNumberOnline, sink) {
    if ("${bankAccountNumberOnline.isValid}" != "true" && "${bankAccountNumberOnline.isValid}" !="") {
      //valid: bank account number online isn't valid .
      sink.addError('empty_validation');
    } else {
      print("BBBB>${bankAccountNumberOnline}");

      sink.add(bankAccountNumberOnline);
    }
  });
}
