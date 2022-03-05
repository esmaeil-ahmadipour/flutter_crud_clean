import 'dart:io';
import 'package:dio/dio.dart';
import 'package:mc_crud_test/core/params/ibanValidationRequest.dart';
import 'package:mc_crud_test/core/params/phoneValidationRequest.dart';
import 'package:mc_crud_test/data/data_sources/remote/ibanValidateservice.dart';
import 'package:mc_crud_test/data/data_sources/remote/phoneValidateservice.dart';
import 'package:mc_crud_test/data/data_sources/remote/remoteDataState.dart';
import 'package:mc_crud_test/domain/entities/IbanValidate.dart';
import 'package:mc_crud_test/domain/entities/phoneValidate.dart';
import 'package:mc_crud_test/domain/repositories/ibanValidateRepository.dart';
import 'package:mc_crud_test/domain/repositories/phoneValidateRepository.dart';

class PhoneValidateRepositoryImpl implements PhoneValidateRepository {
  final PhoneValidateApiService _phoneValidateApiService;

  const PhoneValidateRepositoryImpl(this._phoneValidateApiService);

  @override
  Future<RemoteDataState<PhoneValidate>>  getPhoneValidate(   {required PhoneValidationRequestParams params}) async {
    try {
      final httpResponse = await _phoneValidateApiService.getPhoneValidate(
        params.apiKey,
         params.phoneNumber,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return RemoteDataSuccess(remoteData: httpResponse.data);
      }
      return RemoteDataFailed(
        error: DioError(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioErrorType.response,
          requestOptions: httpResponse.response.requestOptions,
        ),
      );
    } on DioError catch (e) {
      return RemoteDataFailed(error: e);
    }
  }


}
