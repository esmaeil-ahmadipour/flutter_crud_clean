// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ibanValidateservice.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _IbanValidateApiService implements IbanValidateApiService {
  _IbanValidateApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://openiban.com/validate';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<IbanValidateModel>> getIbanValidate(iban) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<IbanValidateModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/${iban}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = IbanValidateModel.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
