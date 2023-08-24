import 'dart:io';
import 'package:dio/dio.dart';
import 'package:mc_crud_test/core/params/ibanValidationRequest.dart';
import 'package:mc_crud_test/data/data_sources/remote/ibanValidateservice.dart';
import 'package:mc_crud_test/data/data_sources/remote/remoteDataState.dart';
import 'package:mc_crud_test/domain/entities/IbanValidate.dart';
import 'package:mc_crud_test/domain/repositories/ibanValidateRepository.dart';

class IbanValidateRepositoryImpl implements IbanValidateRepository {
  final IbanValidateApiService _ibanValidateApiService;

  const IbanValidateRepositoryImpl(this._ibanValidateApiService);

  @override
  Future<RemoteDataState<IbanValidate>> getIbanValidate({required IbanValidationRequestParams params}
      ) async {
    try {
      final httpResponse = await _ibanValidateApiService.getIbanValidate(
       params.iban
      );
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return RemoteDataSuccess(remoteData: httpResponse.data);
      }
      return RemoteDataFailed(remoteData: httpResponse.data,
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
