import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/core/params/ibanValidationRequest.dart';
import 'package:mc_crud_test/core/params/phoneValidationRequest.dart';
import 'package:mc_crud_test/core/utils/resources/mainStrings.dart';
import 'package:mc_crud_test/data/data_sources/remote/ibanValidateservice.dart';
import 'package:mc_crud_test/data/data_sources/remote/phoneValidateservice.dart';
import 'package:mc_crud_test/data/data_sources/remote/remoteDataState.dart';
import 'package:mc_crud_test/data/repositories/ibanValidateRepositoryImpl.dart';
import 'package:mc_crud_test/data/repositories/phoneValidateRepositoryImpl.dart';
import 'package:mockito/mockito.dart';

class MockIbanParams extends Mock implements IbanValidationRequestParams {
  final String iban;

  MockIbanParams({required this.iban});
}

class MockPhoneParams extends Mock implements PhoneValidationRequestParams {
  final String apiKey;
  final String phoneNumber;

  MockPhoneParams({required this.apiKey, required this.phoneNumber});
}

void main() async {
  late MockIbanParams mockIbanParams;
  late MockPhoneParams mockPhoneParams;

  setUp(() {
    mockIbanParams = MockIbanParams(iban: 'GB29NWBK60161331926819');

    mockPhoneParams = MockPhoneParams(
        apiKey: MainStrings.phoneValidationApiKey,
        phoneNumber: "+989363032541");
  });

  group('fetch iban info', () {
    test('iban-request is success', () async {
      // act
      bool isIbanValidResult = await IbanValidateRepositoryImpl(
              IbanValidateApiService(Dio(),
                  baseUrl: MainStrings.ibanValidationBaseUrl))
          .getIbanValidate(params: mockIbanParams)
          .then((value) {
        if (value.remoteData != null &&
            (value.remoteData!.isValid || !value.remoteData!.isValid)) {
          return true;
        } else {
          return false;
        }
      });
      // assert
      expect(isIbanValidResult, true);
    });
    test('iban is valid', () async {
      // act
      bool isIbanValidResult = await IbanValidateRepositoryImpl(
              IbanValidateApiService(Dio(),
                  baseUrl: MainStrings.ibanValidationBaseUrl))
          .getIbanValidate(params: mockIbanParams)
          .then((value) {
        if (value.remoteData != null && value.remoteData!.isValid) {
          return true;
        } else {
          return false;
        }
      });
      // assert
      expect(isIbanValidResult, true);
    });
  });

  group('fetch mobile info', () {
    test('mobileNumber-request is success', () async {
      // act
      bool isMobileNumber = await PhoneValidateRepositoryImpl(
              PhoneValidateApiService(Dio(),
                  baseUrl: MainStrings.phoneValidationBaseUrl))
          .getPhoneValidate(params: mockPhoneParams)
          .then((value) {
        if (value is RemoteDataSuccess) {
          return true;
        } else {
          return false;
        }
      });
      // assert
      expect(isMobileNumber, true);
    });

    test('number type is mobile', () async {
      // act
      bool isMobileNumber = await PhoneValidateRepositoryImpl(
              PhoneValidateApiService(Dio(),
                  baseUrl: MainStrings.phoneValidationBaseUrl))
          .getPhoneValidate(params: mockPhoneParams)
          .then((value) {
        if (value.remoteData != null && value.remoteData!.type == "mobile") {
          return true;
        } else {
          return false;
        }
      });
      // assert
      expect(isMobileNumber, true);
    });
    test('number type is mobile & valid', () async {
      // act
      bool isValidMobileNumber = await PhoneValidateRepositoryImpl(
              PhoneValidateApiService(Dio(),
                  baseUrl: MainStrings.phoneValidationBaseUrl))
          .getPhoneValidate(params: mockPhoneParams)
          .then((value) {
        if (value.remoteData != null &&
            value.remoteData!.type == "mobile" &&
            "${value.remoteData!.valid}" == "true") {
          return true;
        } else {
          return false;
        }
      });
      // assert
      expect(isValidMobileNumber, true);
    });
  });
}
