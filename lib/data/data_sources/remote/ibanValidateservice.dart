import 'package:dio/dio.dart';
import 'package:mc_crud_test/core/utils/resources/mainStrings.dart';
import 'package:mc_crud_test/data/models/IbanValidateModel.dart';
import 'package:retrofit/retrofit.dart';

part 'ibanValidateservice.g.dart';

@RestApi(baseUrl: MainStrings.ibanValidationBaseUrl)
abstract class IbanValidateApiService {
  factory IbanValidateApiService(Dio dio, {String baseUrl}) = _IbanValidateApiService;

  @GET('/{iban}')
  Future<HttpResponse<IbanValidateModel>> getIbanValidate(
    @Path() String iban,
  );
}
